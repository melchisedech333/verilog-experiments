#!/bin/bash

iverilog -o system tests.v gate-and.v 
vvp system
rm -rf system


