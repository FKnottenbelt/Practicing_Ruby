# alphabetically_ordered.rb 7 kyu

# Your task is very simple. Just write a function isp alphabetic(s), which takes
# an input string s in lowercase and returns true/false depending on whether the
# string is in alphabetical order or not.

# For example, isp alphabetic('kata') is False as 'a' comes after 'k', but
# isp alphabetic('ant') is True.
=begin
i: string
o: boolean
f: compare sorted string with string. if equal then true
=end

def alphabetic(s)
  s.chars.sort.join == s
end


p alphabetic('asd') == false
p alphabetic('codewars') == false
p alphabetic('door') == true
p alphabetic('cell') == true
p alphabetic('z') == true
p alphabetic('') == true
