# You will be given a string with brackets and an index of an opening bracket
# and your task will be to return the index of the matching closing bracket.
# Return -1 if there #is no answer.

puts solve("((1)23(45))(aB)", 0) == 10
puts solve(")(1)23(45))(aB)", 0) == -1
puts solve("((1)23(45))(aB)", 1) == 3
puts solve("((1)23(45))(aB)", 2) == -1
puts solve("((1)23(45))(aB)", 6) == 9
puts solve("((1)23(45))(aB)", 11) == 14
puts solve("(g(At)IO(f)(tM(qk)YF(n)Nr(E)))", 11) == 28
puts solve("(g(At)IO(f)(tM(qk)YF(n)Nr(E)))", 0) == 29
puts solve("(>_(va)`?(h)C(as)(x(hD)P|(fg)))", 19) == 22
puts solve("((1(23(45((aB", 0) == -1

















puts '######## solution ###########'
=begin
i: string, integer is index of opening (
o: index of matching closing bracket
   or -1 if there is no closing bracket
f: return one if first open is not open bracket
   get rid of the bit you don't need:
     - make substring from open to end
   loop trough with index
     - count  + 1 if (
     - count  -1 if )
   break if open is 0 and char is )
     - return i + bit you chopped off so i + first_open
=end

def solve(str, first_open)
  open = 0
  return -1 if str[first_open] != '('
  substring = str[first_open .. -1]
  substring.each_char.with_index do |char, i|
    open += 1 if char == '('
    open -= 1 if char == ')'
    return i + first_open if char == ')' && open == 0
  end
  return -1
end


puts solve("((1)23(45))(aB)", 0) == 10
puts solve(")(1)23(45))(aB)", 0) == -1
puts solve("((1)23(45))(aB)", 1) == 3
puts solve("((1)23(45))(aB)", 2) == -1
puts solve("((1)23(45))(aB)", 6) == 9
puts solve("((1)23(45))(aB)", 11) == 14
puts solve("(g(At)IO(f)(tM(qk)YF(n)Nr(E)))", 11) == 28
puts solve("(g(At)IO(f)(tM(qk)YF(n)Nr(E)))", 0) == 29
puts solve("(>_(va)`?(h)C(as)(x(hD)P|(fg)))", 19) == 22
puts solve("((1(23(45((aB", 0) == -1
