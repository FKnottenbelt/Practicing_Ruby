# Given a number, return the highest number that could be
# formed from the input number's digits.


puts max_number(213) == 321
puts max_number(7389) == 9873
puts max_number(63792) == 97632
puts max_number(566797) == 977665
puts max_number(1000000) == 1000000




















#################333
=begin
I: int
o: resuffeld int to highest number
f: break it apart, sort desc, make back to int
   make int to digits
   sort and reverse
   join
   make int
=end

def max_number(int)
  int.digits.sort.reverse.join.to_i
end

