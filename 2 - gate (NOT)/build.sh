#!/bin/bash

iverilog -o system tests.v device.v gate-not.v
vvp system
rm -rf system


