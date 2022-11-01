#!/bin/bash

iverilog -o system tests.v gate-not.v
vvp system
rm -rf system
gtkwave dump.vcd


