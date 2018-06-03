# split_into_twos

# Write a function that splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace
# the missing second character of the final pair with an underscore ('_').





puts solution('abc') == ['ab', 'c_']
puts solution('abcdef') == ['ab', 'cd', 'ef']
puts solution('123456789') == ['12', '34', '56', '78', '9_']

















############
=begin
i: string
o: string in 2s and dash if needed
p: break the strings in consequetive bits of 2 chars
   if the string has an odd length add dash to last block
=end
def solution(string)
  counter = 0
  out = []

  loop do
    break if counter > string.size - 1
    out << string[counter, 2]
    counter += 2
  end

  if out[-1].size < 2
    out[-1] = out[-1] + '_'
  end

  out
end

# could do: add dash to string first if size is odd