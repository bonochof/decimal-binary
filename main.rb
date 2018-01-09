# coding: utf-8

args = ARGV[0].to_f
exit if args < 0.0 or args >= 1.0 

code = '0.'
digit = 0

loop do
  digit += 1
  
  args *= 2.0
  if args >= 1.0
    code += '1'
    args -= 1.0
  else
    code += '0'
  end
  
  break if args == 0.0 or digit == 100
end

p code