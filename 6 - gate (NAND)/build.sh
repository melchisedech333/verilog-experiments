#!/bin/bash

iverilog -o system tests.v gate-nand.v 
vvp system
rm -rf system


