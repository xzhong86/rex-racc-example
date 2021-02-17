# 

class Calculator

macro
  M_FLOAT    \d+\.\d+
  M_DIGIT    \d+
  M_BLANK    \s+
  M_COMMENT  \#.*\n?

rule
  {M_COMMENT}
  {M_BLANK}
  {M_FLOAT}        { [:FLOAT, text.to_f] }
  {M_DIGIT}        { [:DIGIT, text.to_i] }
  [\+\-\*\/]       { [text, text] }
  [()\[\]{}]       { [text, text] }

inner

end
