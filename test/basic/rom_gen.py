#!/usr/bin/env python3

import math

# ROM_IMAGE='GRANTBAS.rom'
ROM_IMAGE='../uart_echo/uart_echo.rom'

with open(ROM_IMAGE,"rb") as f:
    data = f.read()

bit_width = math.ceil(math.log2(len(data)))
hex_width = math.ceil(bit_width/4)

# verilog microm
# for i, d in enumerate(data):
    # addr_str = format(i, f'0{hex_width}x')
    # data_str = format(d, f'02x')
    # print('11\'h000: data = 8\'h41;')
    # print(f'			{bit_width}\'h{addr_str}: data_buf = 8\'h{data_str};')
    # print(f'							(addr_buf == {bit_width}\'h{addr_str}) ? 8\'h{data_str} :')

# mif file
for i in range(2**bit_width):
    addr_str = format(i, f'0{hex_width}x')
    data_str = format(data[i] if i < len(data) else 0xff, f'02x')
    # print(f'			{bit_width}\'h{addr_str}: data_buf = 8\'h{data_str};')
    print(f'{addr_str} : {data_str};')