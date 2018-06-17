# find_parity_outlier.rb
=begin
You are given an array (which will have a length of at least 3, but
could be very large) containing integers. The array is either entirely
comprised of odd integers or entirely comprised of even integers except
for a single integer N. Write a method that takes the array as an
argument and returns this "outlier" N.
Examples

[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

=end

p find_outlier([2, 4, 0, 100, 4, 11, 2602, 36])  == 11
p find_outlier([160, 3, 1719, 19, 11, 13, -21]) == 160











################
def find_outlier(integers)
  if integers[0...4].count{ |i| i.odd?} > 1
    integers.select{|num| num.even?}.first
  else
    integers.select{|num| num.odd?}.first
  end
end

# alternative
=begin
i: array either odd or even ints except 1
o return the one int
f: see if arr is odd or even: take first 3, count evens
   then select then opposite
=end
def find_outlier(arr)
  subset = arr.take(3)
  if subset.count { |i| i.even? } >= 2
    arr.select { |i| i.odd? }.first
  else
    arr.select { |i| i.even? }.first
  end
end

# top solution
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

#
def find_outlier(integers)
  outlier = integers.first(3).count(&:even?) < 2 ? :even? : :odd?
  integers.find(&outlier)
end