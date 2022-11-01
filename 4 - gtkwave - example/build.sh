#!/bin/bash

iverilog -o system comparator.v stimulus.v
vvp system
rm -rf system
gtkwave dump.vcd


