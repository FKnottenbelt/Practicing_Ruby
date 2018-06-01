# two_sum.rb 6 kyu

=begin
Write a function that takes an array of numbers (integers for the tests) and
a target number. It should find two different items in the array that, when
added together, give the target value. The indices of these items should then
be returned in an array like so: [index1, index2].

For the purposes of this kata, some tests may have multiple answers; any
valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or
greater, and all of the items will be numbers; target will always be the
sum of two different items from that array)
=end

=begin
i: arr of nums, target num
O: index of the 2 items
p: find 2 nums in arr that add up to target
f: need to get all combo's of 2 nums
   substring

=end

def twoSum(numbers, target)
  (0...(numbers.size - 1)).each do |ind1|
    ((ind1 + 1)...numbers.size).each do |ind2|
      return [ind1, ind2] if numbers[ind1] + numbers[ind2] == target
    end
  end
end

p twoSum([1,2,3],4).sort == [0,2]
p twoSum([1234,5678,9012], 14690).sort == [1,2]
p twoSum([2,2,3], 4).sort == [0,1]