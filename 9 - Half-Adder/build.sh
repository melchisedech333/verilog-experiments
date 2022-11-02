#!/bin/bash

iverilog -o system tests.v half-adder.v gate-xor.v gate-nand.v gate-and.v
vvp system
rm -rf system


