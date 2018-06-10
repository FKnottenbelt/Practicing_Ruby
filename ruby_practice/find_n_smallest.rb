# find_n_smallest.rb 6 kyu

# Your task is to write a function that returns the n smallest elements of an array in original order.
# The number of elements to be returned cannot be higher than the array length, elements can be duplicated,
# in case of duplicates, just return them according to the original order (see third test case).



p first_n_smallest([1,2,3,4,5],3) == [1,2,3]
p first_n_smallest([5,4,3,2,1],3) == [3,2,1]
p first_n_smallest([1,2,3,4,1],3) == [1,2,1]
p first_n_smallest([1,2,3,-4,0],3) == [1,-4,0]
p first_n_smallest([1,2,3,4,5],0) == []
p first_n_smallest([9, -6, 8, 3, -2, 9, 0, -10, 2, 3, 5, 0, 5, -8, 0, 10, 5, 0, -9, 0, -3, 1], 10) == [-6, -2, 0, -10, 0, -8, 0, 0, -9, -3]















#############
=begin
i: arr of int and take number
o: array of n smallest numbers
f:
    dub array, sort it, take fist n
    loop through array,
     see if int is in smallest
     if so move to output
=end

def first_n_smallest(array, n)
  smallest = array.dup
  p smallest = smallest.sort!.take(n)
  output = []
  array.each do |int|
    output << int if smallest.include?(int) && output.count(int) < smallest.count(int)
  end
  output
end