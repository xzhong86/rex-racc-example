#!/bin/sh

mkdir -p gen
racc clang.racc -v -o gen/clang.racc.rb
ruby test.rb

