#!/bin/sh

rex  calc.rex   -o gen/calc.rex.rb
racc calc.racc  -o gen/calc.racc.rb
ruby gen/calc.racc.rb
