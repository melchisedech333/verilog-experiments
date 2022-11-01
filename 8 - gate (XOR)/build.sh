#!/bin/bash

iverilog -o system tests.v gate-xor.v 
vvp system
rm -rf system


