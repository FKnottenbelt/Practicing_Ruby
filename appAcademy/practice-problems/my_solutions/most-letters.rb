# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
  
  z_is_near=false
  
  while string.include?("a")
    a_location = string.index('a')
    a_plus_3 = string[a_location,4]
    z_is_near = a_plus_3.include?('z')
    string.sub!('a','@')
  end

  return z_is_near
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
puts('nearby_az("hallo beste karez") == true: ' + (nearby_az('hallo beste karez') == true).to_s)