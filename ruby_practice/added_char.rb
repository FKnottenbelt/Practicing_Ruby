# added_char
# Given two strings, the first being a random string and the second
# being the same as the first, but with three added characters
# somewhere in the string (three same characters),
# Write a function that returns the added character.


puts added_char("hello", "checlclo") =='c'
puts added_char("aabbcc", "aacccbbcc") =='c'
puts added_char("abcde", "2db2a2ec") =='2'




















################

=begin
i: string, string plus a char
o: extra char
f: make into arr
   loop through string1
   see if each char is in stirng2
   if it is, delete it
   what is left in string 2 , the first one should be output

=end

def added_char(str1, str2)
  counter = 0
  loop do
    break if counter == str1.size
    current = str1[counter]
    str2.sub!(current, '')
    counter += 1
  end
  str2[0]
end

def added_char(string1, string2)
  string1.each_char { |ch| string2.sub!(ch, '') }
  string2.squeeze
end