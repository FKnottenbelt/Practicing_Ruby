# from srjdan
=begin
  *******************NUMBER 1**************************

Given an array of numbers find if any 3 numbers inside of the array
  can be multiplied to get the maximum number in the array.
  If the number is used once it can't be used again. If there articletwo same numbers
  then that number can be used 2 times.
=end


# p mult_of_three_nums([1,2,3,4,5,6]) == true
# p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) == false
# p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) == true
# p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) == true
# p mult_of_three_nums([2, 5, 8, 11, 32, 2]) == true
# p mult_of_three_nums([13, 3, 11, 56, 79, 2]) == false

# *****************NUMBER 2****************************
=begin
Given a string, find the number character that is repeated most times and return it's numeric value. If multiple characters are repeated the same time, return first one.
If there are no numeric characters in a string return nil.
=end

# p re_letter('There isn\' any number here!') == nil
# p re_letter('%^&*()!') == nil
# p re_letter('111222333') == 1
# p re_letter('1234335521444') == 4
# p re_letter('') == nil
# p re_letter('011-555-333-23') == 3
# p re_letter('1') == 1
# p re_letter('444352893599119') == 9

=begin

*****************NUMBER 3****************************

Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a
substring that appears in both strings, or false if you do not.
 We only care about substrings that are longer than one letter long.

=end

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


# *****************NUMBER 4****************************
=begin


# Write a function to_weird_case (weirdcase in Ruby) that accepts a string, and returns the same string
# with every 4th character in a word upcase. Other characters should remain the same.
=end

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'LorEm IpsUm is simPly dumMy texT of the priNtinG'
# p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a lonG estAbliShed facT thaT a reaDer wilL be disTracTed'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case('Merry Poppins word is supercalifragilisticexpialidocious') == 'MerRy PopPins worD is supErcaLifrAgilIstiCexpIaliDociOus'


Add Comment