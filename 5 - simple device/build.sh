#!/bin/bash

iverilog -o system tests.v device.v 
vvp system
rm -rf system


