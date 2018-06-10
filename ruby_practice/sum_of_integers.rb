# Your task is to implement a function that calculates the sum of the integers inside a string.
# For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog",
# the sum of the integers is 3635.



puts sum_of_integers_in_string("12.4") == 16
puts sum_of_integers_in_string("h3ll0w0rld") == 3
puts sum_of_integers_in_string("2 + 3 = ") == 5
puts sum_of_integers_in_string("Our company made approximately 1 million in gross revenue last quarter.") == 1
puts sum_of_integers_in_string("The Great Depression lasted from 1929 to 1939.") == 3868
puts sum_of_integers_in_string("Dogs are our best friends.") == 0
puts sum_of_integers_in_string("C4t5 are 4m4z1ng.") == 18
puts sum_of_integers_in_string("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog") == 3635















#############

=begin
i: string with hidden integers
o: summ of integers
r: consecutive int = int
f: replace letters with space,
   split
   sum
=end

def sum_of_integers_in_string(string)
  string = string.downcase.gsub!(/[^0-9]/," ")
  string.split.map(&:to_i).sum
end

# top solution
def sum_of_integers_in_string(s)
  s.scan(/\d+/).reduce(0) { |sum, i| sum + i.to_i }
end