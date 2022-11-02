#!/bin/bash

iverilog -o system tests.v half-adder.v 
vvp system
rm -rf system


