// Verilog netlist created by TD v5.0.27252
// Tue Feb  1 03:24:10 2022

`timescale 1ns / 1ps
module ip_ram  // ip_ram.v(14)
  (
  addra,
  clka,
  dia,
  wea,
  doa
  );

  input [14:0] addra;  // ip_ram.v(29)
  input clka;  // ip_ram.v(31)
  input [7:0] dia;  // ip_ram.v(28)
  input wea;  // ip_ram.v(30)
  output [7:0] doa;  // ip_ram.v(26)

  parameter ADDR_WIDTH_A = 15;
  parameter ADDR_WIDTH_B = 15;
  parameter DATA_DEPTH_A = 32768;
  parameter DATA_DEPTH_B = 32768;
  parameter DATA_WIDTH_A = 8;
  parameter DATA_WIDTH_B = 8;
  parameter REGMODE_A = "NOREG";
  parameter WRITEMODE_A = "NORMAL";
  wire [0:1] addra_piped;
  wire  \inst_doa_mux_b0/B0_0 ;
  wire  \inst_doa_mux_b0/B0_1 ;
  wire  \inst_doa_mux_b1/B0_0 ;
  wire  \inst_doa_mux_b1/B0_1 ;
  wire  \inst_doa_mux_b2/B0_0 ;
  wire  \inst_doa_mux_b2/B0_1 ;
  wire  \inst_doa_mux_b3/B0_0 ;
  wire  \inst_doa_mux_b3/B0_1 ;
  wire  \inst_doa_mux_b4/B0_0 ;
  wire  \inst_doa_mux_b4/B0_1 ;
  wire  \inst_doa_mux_b5/B0_0 ;
  wire  \inst_doa_mux_b5/B0_1 ;
  wire  \inst_doa_mux_b6/B0_0 ;
  wire  \inst_doa_mux_b6/B0_1 ;
  wire  \inst_doa_mux_b7/B0_0 ;
  wire  \inst_doa_mux_b7/B0_1 ;
  wire inst_doa_i0_000;
  wire inst_doa_i0_001;
  wire inst_doa_i0_002;
  wire inst_doa_i0_003;
  wire inst_doa_i0_004;
  wire inst_doa_i0_005;
  wire inst_doa_i0_006;
  wire inst_doa_i0_007;
  wire inst_doa_i1_000;
  wire inst_doa_i1_001;
  wire inst_doa_i1_002;
  wire inst_doa_i1_003;
  wire inst_doa_i1_004;
  wire inst_doa_i1_005;
  wire inst_doa_i1_006;
  wire inst_doa_i1_007;
  wire inst_doa_i2_000;
  wire inst_doa_i2_001;
  wire inst_doa_i2_002;
  wire inst_doa_i2_003;
  wire inst_doa_i2_004;
  wire inst_doa_i2_005;
  wire inst_doa_i2_006;
  wire inst_doa_i2_007;
  wire inst_doa_i3_000;
  wire inst_doa_i3_001;
  wire inst_doa_i3_002;
  wire inst_doa_i3_003;
  wire inst_doa_i3_004;
  wire inst_doa_i3_005;
  wire inst_doa_i3_006;
  wire inst_doa_i3_007;
  wire wea_neg;

  AL_DFF_X addra_pipe_b0 (
    .ar(1'b0),
    .as(1'b0),
    .clk(clka),
    .d(addra[13]),
    .en(wea_neg),
    .sr(1'b0),
    .ss(1'b0),
    .q(addra_piped[0]));
  AL_DFF_X addra_pipe_b1 (
    .ar(1'b0),
    .as(1'b0),
    .clk(clka),
    .d(addra[14]),
    .en(wea_neg),
    .sr(1'b0),
    .ss(1'b0),
    .q(addra_piped[1]));
  EG_PHY_CONFIG #(
    .DONE_PERSISTN("ENABLE"),
    .INIT_PERSISTN("ENABLE"),
    .JTAG_PERSISTN("DISABLE"),
    .PROGRAMN_PERSISTN("DISABLE"))
    config_inst ();
  // address_offset=0;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n63,addra[14:13]}),
    .dia({open_n67,open_n68,open_n69,open_n70,open_n71,open_n72,open_n73,dia[0],open_n74}),
    .wea(wea),
    .doa({open_n89,open_n90,open_n91,open_n92,open_n93,open_n94,open_n95,open_n96,inst_doa_i0_000}));
  // address_offset=0;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n122,addra[14:13]}),
    .dia({open_n126,open_n127,open_n128,open_n129,open_n130,open_n131,open_n132,dia[1],open_n133}),
    .wea(wea),
    .doa({open_n148,open_n149,open_n150,open_n151,open_n152,open_n153,open_n154,open_n155,inst_doa_i0_001}));
  // address_offset=0;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n181,addra[14:13]}),
    .dia({open_n185,open_n186,open_n187,open_n188,open_n189,open_n190,open_n191,dia[2],open_n192}),
    .wea(wea),
    .doa({open_n207,open_n208,open_n209,open_n210,open_n211,open_n212,open_n213,open_n214,inst_doa_i0_002}));
  // address_offset=0;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n240,addra[14:13]}),
    .dia({open_n244,open_n245,open_n246,open_n247,open_n248,open_n249,open_n250,dia[3],open_n251}),
    .wea(wea),
    .doa({open_n266,open_n267,open_n268,open_n269,open_n270,open_n271,open_n272,open_n273,inst_doa_i0_003}));
  // address_offset=0;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n299,addra[14:13]}),
    .dia({open_n303,open_n304,open_n305,open_n306,open_n307,open_n308,open_n309,dia[4],open_n310}),
    .wea(wea),
    .doa({open_n325,open_n326,open_n327,open_n328,open_n329,open_n330,open_n331,open_n332,inst_doa_i0_004}));
  // address_offset=0;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n358,addra[14:13]}),
    .dia({open_n362,open_n363,open_n364,open_n365,open_n366,open_n367,open_n368,dia[5],open_n369}),
    .wea(wea),
    .doa({open_n384,open_n385,open_n386,open_n387,open_n388,open_n389,open_n390,open_n391,inst_doa_i0_005}));
  // address_offset=0;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n417,addra[14:13]}),
    .dia({open_n421,open_n422,open_n423,open_n424,open_n425,open_n426,open_n427,dia[6],open_n428}),
    .wea(wea),
    .doa({open_n443,open_n444,open_n445,open_n446,open_n447,open_n448,open_n449,open_n450,inst_doa_i0_006}));
  // address_offset=0;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_000000_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n476,addra[14:13]}),
    .dia({open_n480,open_n481,open_n482,open_n483,open_n484,open_n485,open_n486,dia[7],open_n487}),
    .wea(wea),
    .doa({open_n502,open_n503,open_n504,open_n505,open_n506,open_n507,open_n508,open_n509,inst_doa_i0_007}));
  // address_offset=8192;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n535,addra[14:13]}),
    .dia({open_n539,open_n540,open_n541,open_n542,open_n543,open_n544,open_n545,dia[0],open_n546}),
    .wea(wea),
    .doa({open_n561,open_n562,open_n563,open_n564,open_n565,open_n566,open_n567,open_n568,inst_doa_i1_000}));
  // address_offset=8192;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n594,addra[14:13]}),
    .dia({open_n598,open_n599,open_n600,open_n601,open_n602,open_n603,open_n604,dia[1],open_n605}),
    .wea(wea),
    .doa({open_n620,open_n621,open_n622,open_n623,open_n624,open_n625,open_n626,open_n627,inst_doa_i1_001}));
  // address_offset=8192;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n653,addra[14:13]}),
    .dia({open_n657,open_n658,open_n659,open_n660,open_n661,open_n662,open_n663,dia[2],open_n664}),
    .wea(wea),
    .doa({open_n679,open_n680,open_n681,open_n682,open_n683,open_n684,open_n685,open_n686,inst_doa_i1_002}));
  // address_offset=8192;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n712,addra[14:13]}),
    .dia({open_n716,open_n717,open_n718,open_n719,open_n720,open_n721,open_n722,dia[3],open_n723}),
    .wea(wea),
    .doa({open_n738,open_n739,open_n740,open_n741,open_n742,open_n743,open_n744,open_n745,inst_doa_i1_003}));
  // address_offset=8192;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n771,addra[14:13]}),
    .dia({open_n775,open_n776,open_n777,open_n778,open_n779,open_n780,open_n781,dia[4],open_n782}),
    .wea(wea),
    .doa({open_n797,open_n798,open_n799,open_n800,open_n801,open_n802,open_n803,open_n804,inst_doa_i1_004}));
  // address_offset=8192;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n830,addra[14:13]}),
    .dia({open_n834,open_n835,open_n836,open_n837,open_n838,open_n839,open_n840,dia[5],open_n841}),
    .wea(wea),
    .doa({open_n856,open_n857,open_n858,open_n859,open_n860,open_n861,open_n862,open_n863,inst_doa_i1_005}));
  // address_offset=8192;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n889,addra[14:13]}),
    .dia({open_n893,open_n894,open_n895,open_n896,open_n897,open_n898,open_n899,dia[6],open_n900}),
    .wea(wea),
    .doa({open_n915,open_n916,open_n917,open_n918,open_n919,open_n920,open_n921,open_n922,inst_doa_i1_006}));
  // address_offset=8192;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("INV"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_008192_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n948,addra[14:13]}),
    .dia({open_n952,open_n953,open_n954,open_n955,open_n956,open_n957,open_n958,dia[7],open_n959}),
    .wea(wea),
    .doa({open_n974,open_n975,open_n976,open_n977,open_n978,open_n979,open_n980,open_n981,inst_doa_i1_007}));
  // address_offset=16384;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1007,addra[14:13]}),
    .dia({open_n1011,open_n1012,open_n1013,open_n1014,open_n1015,open_n1016,open_n1017,dia[0],open_n1018}),
    .wea(wea),
    .doa({open_n1033,open_n1034,open_n1035,open_n1036,open_n1037,open_n1038,open_n1039,open_n1040,inst_doa_i2_000}));
  // address_offset=16384;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1066,addra[14:13]}),
    .dia({open_n1070,open_n1071,open_n1072,open_n1073,open_n1074,open_n1075,open_n1076,dia[1],open_n1077}),
    .wea(wea),
    .doa({open_n1092,open_n1093,open_n1094,open_n1095,open_n1096,open_n1097,open_n1098,open_n1099,inst_doa_i2_001}));
  // address_offset=16384;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1125,addra[14:13]}),
    .dia({open_n1129,open_n1130,open_n1131,open_n1132,open_n1133,open_n1134,open_n1135,dia[2],open_n1136}),
    .wea(wea),
    .doa({open_n1151,open_n1152,open_n1153,open_n1154,open_n1155,open_n1156,open_n1157,open_n1158,inst_doa_i2_002}));
  // address_offset=16384;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1184,addra[14:13]}),
    .dia({open_n1188,open_n1189,open_n1190,open_n1191,open_n1192,open_n1193,open_n1194,dia[3],open_n1195}),
    .wea(wea),
    .doa({open_n1210,open_n1211,open_n1212,open_n1213,open_n1214,open_n1215,open_n1216,open_n1217,inst_doa_i2_003}));
  // address_offset=16384;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1243,addra[14:13]}),
    .dia({open_n1247,open_n1248,open_n1249,open_n1250,open_n1251,open_n1252,open_n1253,dia[4],open_n1254}),
    .wea(wea),
    .doa({open_n1269,open_n1270,open_n1271,open_n1272,open_n1273,open_n1274,open_n1275,open_n1276,inst_doa_i2_004}));
  // address_offset=16384;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1302,addra[14:13]}),
    .dia({open_n1306,open_n1307,open_n1308,open_n1309,open_n1310,open_n1311,open_n1312,dia[5],open_n1313}),
    .wea(wea),
    .doa({open_n1328,open_n1329,open_n1330,open_n1331,open_n1332,open_n1333,open_n1334,open_n1335,inst_doa_i2_005}));
  // address_offset=16384;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1361,addra[14:13]}),
    .dia({open_n1365,open_n1366,open_n1367,open_n1368,open_n1369,open_n1370,open_n1371,dia[6],open_n1372}),
    .wea(wea),
    .doa({open_n1387,open_n1388,open_n1389,open_n1390,open_n1391,open_n1392,open_n1393,open_n1394,inst_doa_i2_006}));
  // address_offset=16384;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("INV"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_016384_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1420,addra[14:13]}),
    .dia({open_n1424,open_n1425,open_n1426,open_n1427,open_n1428,open_n1429,open_n1430,dia[7],open_n1431}),
    .wea(wea),
    .doa({open_n1446,open_n1447,open_n1448,open_n1449,open_n1450,open_n1451,open_n1452,open_n1453,inst_doa_i2_007}));
  // address_offset=24576;data_offset=0;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_000 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1479,addra[14:13]}),
    .dia({open_n1483,open_n1484,open_n1485,open_n1486,open_n1487,open_n1488,open_n1489,dia[0],open_n1490}),
    .wea(wea),
    .doa({open_n1505,open_n1506,open_n1507,open_n1508,open_n1509,open_n1510,open_n1511,open_n1512,inst_doa_i3_000}));
  // address_offset=24576;data_offset=1;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_001 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1538,addra[14:13]}),
    .dia({open_n1542,open_n1543,open_n1544,open_n1545,open_n1546,open_n1547,open_n1548,dia[1],open_n1549}),
    .wea(wea),
    .doa({open_n1564,open_n1565,open_n1566,open_n1567,open_n1568,open_n1569,open_n1570,open_n1571,inst_doa_i3_001}));
  // address_offset=24576;data_offset=2;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_002 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1597,addra[14:13]}),
    .dia({open_n1601,open_n1602,open_n1603,open_n1604,open_n1605,open_n1606,open_n1607,dia[2],open_n1608}),
    .wea(wea),
    .doa({open_n1623,open_n1624,open_n1625,open_n1626,open_n1627,open_n1628,open_n1629,open_n1630,inst_doa_i3_002}));
  // address_offset=24576;data_offset=3;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_003 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1656,addra[14:13]}),
    .dia({open_n1660,open_n1661,open_n1662,open_n1663,open_n1664,open_n1665,open_n1666,dia[3],open_n1667}),
    .wea(wea),
    .doa({open_n1682,open_n1683,open_n1684,open_n1685,open_n1686,open_n1687,open_n1688,open_n1689,inst_doa_i3_003}));
  // address_offset=24576;data_offset=4;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_004 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1715,addra[14:13]}),
    .dia({open_n1719,open_n1720,open_n1721,open_n1722,open_n1723,open_n1724,open_n1725,dia[4],open_n1726}),
    .wea(wea),
    .doa({open_n1741,open_n1742,open_n1743,open_n1744,open_n1745,open_n1746,open_n1747,open_n1748,inst_doa_i3_004}));
  // address_offset=24576;data_offset=5;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_005 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1774,addra[14:13]}),
    .dia({open_n1778,open_n1779,open_n1780,open_n1781,open_n1782,open_n1783,open_n1784,dia[5],open_n1785}),
    .wea(wea),
    .doa({open_n1800,open_n1801,open_n1802,open_n1803,open_n1804,open_n1805,open_n1806,open_n1807,inst_doa_i3_005}));
  // address_offset=24576;data_offset=6;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_006 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1833,addra[14:13]}),
    .dia({open_n1837,open_n1838,open_n1839,open_n1840,open_n1841,open_n1842,open_n1843,dia[6],open_n1844}),
    .wea(wea),
    .doa({open_n1859,open_n1860,open_n1861,open_n1862,open_n1863,open_n1864,open_n1865,open_n1866,inst_doa_i3_006}));
  // address_offset=24576;data_offset=7;depth=8192;width=1;num_section=1;width_per_section=1;section_size=8;working_depth=8192;working_width=1;mode_ecc=0;address_step=1;bytes_in_per_section=1;
  EG_PHY_BRAM #(
    //.FORCE_KEEP("ON"),
    .CEAMUX("1"),
    .CEBMUX("0"),
    .CLKBMUX("0"),
    .CSA0("SIG"),
    .CSA1("SIG"),
    .CSA2("1"),
    .CSB0("1"),
    .CSB1("1"),
    .CSB2("1"),
    .DATA_WIDTH_A("1"),
    .DATA_WIDTH_B("1"),
    .MODE("SP8K"),
    .OCEAMUX("0"),
    .OCEBMUX("0"),
    .REGMODE_A("NOREG"),
    .REGMODE_B("NOREG"),
    .RESETMODE("SYNC"),
    .RSTAMUX("0"),
    .RSTBMUX("0"),
    .WEBMUX("0"),
    .WRITEMODE_A("NORMAL"),
    .WRITEMODE_B("NORMAL"))
    inst_32768x8_sub_024576_007 (
    .addra(addra[12:0]),
    .clka(clka),
    .csa({open_n1892,addra[14:13]}),
    .dia({open_n1896,open_n1897,open_n1898,open_n1899,open_n1900,open_n1901,open_n1902,dia[7],open_n1903}),
    .wea(wea),
    .doa({open_n1918,open_n1919,open_n1920,open_n1921,open_n1922,open_n1923,open_n1924,open_n1925,inst_doa_i3_007}));
  AL_MUX \inst_doa_mux_b0/al_mux_b0_0_0  (
    .i0(inst_doa_i0_000),
    .i1(inst_doa_i1_000),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b0/B0_0 ));
  AL_MUX \inst_doa_mux_b0/al_mux_b0_0_1  (
    .i0(inst_doa_i2_000),
    .i1(inst_doa_i3_000),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b0/B0_1 ));
  AL_MUX \inst_doa_mux_b0/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b0/B0_0 ),
    .i1(\inst_doa_mux_b0/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[0]));
  AL_MUX \inst_doa_mux_b1/al_mux_b0_0_0  (
    .i0(inst_doa_i0_001),
    .i1(inst_doa_i1_001),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b1/B0_0 ));
  AL_MUX \inst_doa_mux_b1/al_mux_b0_0_1  (
    .i0(inst_doa_i2_001),
    .i1(inst_doa_i3_001),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b1/B0_1 ));
  AL_MUX \inst_doa_mux_b1/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b1/B0_0 ),
    .i1(\inst_doa_mux_b1/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[1]));
  AL_MUX \inst_doa_mux_b2/al_mux_b0_0_0  (
    .i0(inst_doa_i0_002),
    .i1(inst_doa_i1_002),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b2/B0_0 ));
  AL_MUX \inst_doa_mux_b2/al_mux_b0_0_1  (
    .i0(inst_doa_i2_002),
    .i1(inst_doa_i3_002),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b2/B0_1 ));
  AL_MUX \inst_doa_mux_b2/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b2/B0_0 ),
    .i1(\inst_doa_mux_b2/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[2]));
  AL_MUX \inst_doa_mux_b3/al_mux_b0_0_0  (
    .i0(inst_doa_i0_003),
    .i1(inst_doa_i1_003),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b3/B0_0 ));
  AL_MUX \inst_doa_mux_b3/al_mux_b0_0_1  (
    .i0(inst_doa_i2_003),
    .i1(inst_doa_i3_003),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b3/B0_1 ));
  AL_MUX \inst_doa_mux_b3/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b3/B0_0 ),
    .i1(\inst_doa_mux_b3/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[3]));
  AL_MUX \inst_doa_mux_b4/al_mux_b0_0_0  (
    .i0(inst_doa_i0_004),
    .i1(inst_doa_i1_004),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b4/B0_0 ));
  AL_MUX \inst_doa_mux_b4/al_mux_b0_0_1  (
    .i0(inst_doa_i2_004),
    .i1(inst_doa_i3_004),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b4/B0_1 ));
  AL_MUX \inst_doa_mux_b4/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b4/B0_0 ),
    .i1(\inst_doa_mux_b4/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[4]));
  AL_MUX \inst_doa_mux_b5/al_mux_b0_0_0  (
    .i0(inst_doa_i0_005),
    .i1(inst_doa_i1_005),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b5/B0_0 ));
  AL_MUX \inst_doa_mux_b5/al_mux_b0_0_1  (
    .i0(inst_doa_i2_005),
    .i1(inst_doa_i3_005),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b5/B0_1 ));
  AL_MUX \inst_doa_mux_b5/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b5/B0_0 ),
    .i1(\inst_doa_mux_b5/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[5]));
  AL_MUX \inst_doa_mux_b6/al_mux_b0_0_0  (
    .i0(inst_doa_i0_006),
    .i1(inst_doa_i1_006),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b6/B0_0 ));
  AL_MUX \inst_doa_mux_b6/al_mux_b0_0_1  (
    .i0(inst_doa_i2_006),
    .i1(inst_doa_i3_006),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b6/B0_1 ));
  AL_MUX \inst_doa_mux_b6/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b6/B0_0 ),
    .i1(\inst_doa_mux_b6/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[6]));
  AL_MUX \inst_doa_mux_b7/al_mux_b0_0_0  (
    .i0(inst_doa_i0_007),
    .i1(inst_doa_i1_007),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b7/B0_0 ));
  AL_MUX \inst_doa_mux_b7/al_mux_b0_0_1  (
    .i0(inst_doa_i2_007),
    .i1(inst_doa_i3_007),
    .sel(addra_piped[0]),
    .o(\inst_doa_mux_b7/B0_1 ));
  AL_MUX \inst_doa_mux_b7/al_mux_b0_1_0  (
    .i0(\inst_doa_mux_b7/B0_0 ),
    .i1(\inst_doa_mux_b7/B0_1 ),
    .sel(addra_piped[1]),
    .o(doa[7]));
  not wea_inv (wea_neg, wea);

endmodule 

module AL_DFF_X
  (
  ar,
  as,
  clk,
  d,
  en,
  sr,
  ss,
  q
  );

  input ar;
  input as;
  input clk;
  input d;
  input en;
  input sr;
  input ss;
  output q;

  wire enout;
  wire srout;
  wire ssout;

  AL_MUX u_en (
    .i0(q),
    .i1(d),
    .sel(en),
    .o(enout));
  AL_MUX u_reset (
    .i0(ssout),
    .i1(1'b0),
    .sel(sr),
    .o(srout));
  AL_DFF u_seq (
    .clk(clk),
    .d(srout),
    .reset(ar),
    .set(as),
    .q(q));
  AL_MUX u_set (
    .i0(enout),
    .i1(1'b1),
    .sel(ss),
    .o(ssout));

endmodule 

module AL_MUX
  (
  input i0,
  input i1,
  input sel,
  output o
  );

  wire not_sel, sel_i0, sel_i1;
  not u0 (not_sel, sel);
  and u1 (sel_i1, sel, i1);
  and u2 (sel_i0, not_sel, i0);
  or u3 (o, sel_i1, sel_i0);

endmodule

module AL_DFF
  (
  input reset,
  input set,
  input clk,
  input d,
  output reg q
  );

  parameter INI = 1'b0;

  // synthesis translate_off
  tri0 gsrn = glbl.gsrn;

  always @(gsrn)
  begin
    if(!gsrn)
      assign q = INI;
    else
      deassign q;
  end
  // synthesis translate_on

  always @(posedge reset or posedge set or posedge clk)
  begin
    if (reset)
      q <= 1'b0;
    else if (set)
      q <= 1'b1;
    else
      q <= d;
  end

endmodule

