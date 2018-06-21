# keep_order

# Write a function which takes a sorted array ary and a value
# val, and returns the lowest index where you could insert val
# to maintain the sorted-ness of the array. The input array will
# always be sorted in ascending order. It may contain duplicates.


puts keep_order([1, 2, 3, 4, 7], 5) == 4
puts keep_order([1, 2, 3, 4, 7], 0) == 0
puts keep_order([1, 1, 2, 2, 2], 2) == 2
puts keep_order([1, 2, 3, 4], 5) == 4
puts keep_order([1, 2, 3, 4], -1) == 0
puts keep_order([1, 2, 3, 4], 2) == 1












################333
=begin
i: sorted array and value number
o: index of place where you insert value (lowest possible)
f: loop until I find an number that is the same of bigger than value
   than return that index - 1
=end

def keep_order(arr, n)
  arr.each.with_index do |num, index|
    if num >= n
      return index
    elsif num == arr.last
      return index + 1
    end
  end
end

# alternative
def keep_order(arr, val)
  num = arr.find{ |i| i >= val}
  num.nil? ? arr.size : arr.index(num)
end
