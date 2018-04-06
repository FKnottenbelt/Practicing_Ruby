# studygroup with Srdan 6 april 2018

###
# hard question:

# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
#  We only care about substrings that are longer than one letter long.

# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true


###
# easy question:

# Write a function that takes in a string of one or more words,
# and returns the same string, but with all five or more letter words
#  reversed. Strings passed in will
#   consist of only letters and spaces. Spaces will be included only
#  when more than one word is present.

# spinWords("Hey fellow warriors") == "Hey wollef sroirraw"
# spinWords("This is a test") == "This is a test"
# spinWords("This is another test") == "This is rehtona test"