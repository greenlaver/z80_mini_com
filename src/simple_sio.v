module simple_sio(n_rst, clk, ce, rd, wr, cd, data_in, data_out, txd, rxd);

input n_rst, clk;		// clk freq : Baudrate * 2
input ce, rd, wr;
input cd;				// HIGH: Command / LOW: Data
input [7:0] data_in;
output [7:0] data_out;

input rxd;
output txd;

reg [9:0] tx_buf;	// stop_bit + data[7:0] + start_bit
reg [7:0] rx_buf;
reg tx_ready, rx_ready;

reg rxd_d, rxd_dd;
reg txd_d;

reg [7:0] data_out_buf;

reg [4:0] rx_cnt;
reg [4:0] tx_cnt;

always @(posedge clk or negedge n_rst) begin
	if(!n_rst) begin
		// data buffer
		tx_buf <= 10'b10_0000_0000;
		rx_buf <= 8'h00;
		data_out_buf <= 8'hzz;
	
		// status register
		rx_ready <= 1'b0;
		tx_ready <= 1'b1;
		
		// txd, rxd buffer
		txd_d <= 1'bz;
		rxd_d   <= 1'b1;
		rxd_dd  <= 1'b1;
		
		// timing counter
		rx_cnt <= 5'h00;
		tx_cnt <= 5'h00;
	end
	else begin
		// RXD recieve : when already RX_ready, new-comming data will be ignored
		if(!rx_ready) begin
			// detect start bit edge
			if(rxd_dd && !rxd_d) begin
				rx_cnt <= 5'h1;
			end
			
			if(rx_cnt > 5'h00) begin
				rx_cnt <= rx_cnt + 5'h1;
				
				// Recieve Data (Shift register, data from RXD)
				if(rx_cnt[0] == 1'b0) begin
					rx_buf <= {rxd_d, rx_buf[7:1]};
				end
				
				// Set RX_ready flag after recieved data[7]
				if(rx_cnt[4:1] == 4'h8) begin
					rx_cnt <= 5'h0;
					rx_ready <= 1'b1;
				end
			end
		end
		
		// TXD transmit
		if(!tx_ready) begin
			tx_cnt <= tx_cnt + 5'h1;
			
			// Send LSB data to TXD
			txd_d <= tx_buf[0];
			
			if(tx_cnt[0] == 1'b1) begin
				// Right shift
				tx_buf = {1'b1, tx_buf[9:1]};
			end
			
			if(tx_cnt[4:1] == 4'hA) begin	// 1[start]+8[data]+1[stop]=10bit
				// Finish TXD transmit
				tx_ready <= 1'b1;
				txd_d <= 1'b1;
			end
		end
		
		// Chip enabled
		if(ce) begin
			// RD
			if(rd) begin
				// Command read
				if(cd) begin
					data_out_buf <= {6'h00, rx_ready, tx_ready};
				end
				// Data read
				else begin
					data_out_buf <= rx_buf;
					// Data read cause clear RX_ready
					rx_ready <= 1'b0;
				end
			end
			
			// WR
			if(wr) begin
				// Data write
				if(!cd) begin
					// stop_bit + data[7:0] + start_bit
					tx_buf <= {1'b1, data_in, 1'b0};
					tx_ready <= 1'b0;
					tx_cnt <= 5'h1;
				end
			end
		end
		else begin
			// free data bus
			data_out_buf <= 8'hzz;
		end		
		
		// signal buffer
		rxd_dd <= rxd_d;
		rxd_d <= rxd;
	end
end

assign txd = txd_d;
assign data_out = data_out_buf;

endmodule