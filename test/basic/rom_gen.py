#!/usr/bin/env python3

import math

ROM_IMAGE='GRANTBAS.rom'

with open(ROM_IMAGE,"rb") as f:
    data = f.read()

bit_width = math.ceil(math.log2(len(data)))
hex_width = math.ceil(bit_width/4)

for i, d in enumerate(data):
    addr_str = format(i, f'0{hex_width}x')
    data_str = format(d, f'02x')
    # print('11\'h000: data = 8\'h41;')
    print(f'			{bit_width}\'h{addr_str}: data_buf = 8\'h{data_str};')
    # print(f'							(addr_buf == {bit_width}\'h{addr_str}) ? 8\'h{data_str} :')
