# find_odd_int.rb 6 kyu

=begin
Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
=end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10

















puts '######## solution ###########'
=begin
i: arr of int
o: int that appears odd num of times
f: select count is odd
=end
def find_it(arr)
  arr.select { |int| arr.count(int).odd? }.first
end
