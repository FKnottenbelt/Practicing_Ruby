=begin
Your challenge is to create a function that determines whether or not the characters within a word appear
in alphabetical order. If the letters appear in order, return 'IN ORDER'. If the letters appear out of order,
return 'OUT OF ORDER'. If the letters appear in reverse order, return 'IN REVERSE ORDER'.
For example, the word 'almost' would return 'IN ORDER', 'cat' would return 'OUT OF ORDER', and
'sponge' would return 'IN REVERSE ORDER'.
=end


puts order('almost') == 'IN ORDER'
puts order('cat') == 'OUT OF ORDER'
puts order('sponge') == 'IN REVERSE ORDER'












#################33
=begin
i string
o: IN ORDER, OUT OF ORDER, IN REVERSE ORDER
f: copy to array (split)
   compare to sorted  if true, in order
   compare to sorted, reversed, if tru in reverse order
else out of order
=end

def order(string)
  arr = string.split('')
  if arr.sort.join == string
    "IN ORDER"
  elsif arr.sort.reverse.join == string
    "IN REVERSE ORDER"
  else
    "OUT OF ORDER"
  end
end