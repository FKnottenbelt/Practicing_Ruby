# are_they_the_same.rb 6 kyu
=begin
Given two arrays a and b write a function comp(a, b)
that checks whether the two arrays have the "same" elements, with the same
multiplicities. "Same" means, here, that the elements in b are the elements
in a squared, regardless of the order.

Examples
Valid arrays

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is
the square of 121, 20736 the square of 144, 361 the square of 19, 25921
the square of 161, and so on. It gets obvious if we write b's elements in
terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Invalid arrays

If we change the first number to something else, comp may not return true
anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 36100 is not the square of any number
of a.
Remarks

a or b might be [] (all languages except R, Shell). a or b might be nil or
null or None (except in Haskell, Elixir, C++, Rust, R, Shell).

If a or b are nil (or null or None), the problem doesn't make sense so
return false.

If a or b are empty the result is evident by itself.

=end



p comp( [121, 144, 19, 161, 19, 144, 19, 11],
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true
p comp([121, 144, 19, 161, 19, 144, 19, 11],
  [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == false
p comp([121, 144, 19, 161, 19, 144, 19, 11],
  [11*11, 121*121, 144*144, 190*190, 161*161, 19*19, 144*144, 19*19]) == false
p comp([], []) == true
p comp([], nil) == false
p comp([121, 144, 19, 161, 19, 144, 19, 11, 1008],
  [11*11, 121*121, 144*144, 190*190, 161*161, 19*19, 144*144, 19*19]) == false
p comp( [2, 2, 3],  [4, 9, 9]) == false













#####################
=begin
I: 2 arrays
  might by [], nil or none -> false
o: boolean: is values a equal to values b
p: I need to match values in a to b
f: check input
   loop trough a and see if squared is in b
   break with false if not
   if all good return true and sum a is sum b
=end

def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  check = []
  array1.each do |num|
    return false if !array2.include?(num**2)
    check << num ** 2
  end
  check.sum == array2.sum ? true : false
end

# top solution
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end