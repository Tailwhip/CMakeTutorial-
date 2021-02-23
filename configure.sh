#!/bin/sh

#rm -r /out/build; mkdir -p /out/build; 

cmake -DGLFW_BUILD_DOCS=OFF -S . -B out/build