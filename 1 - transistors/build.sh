#!/bin/bash

iverilog -o system test-pnp.v pnp.v
vvp system
rm -rf system

echo ""

iverilog -o system test-npn.v npn.v
vvp system
rm -rf system


