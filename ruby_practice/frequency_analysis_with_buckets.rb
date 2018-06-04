# frequency_analysis_with_buckets.rb 6 kyu
=begin
Description:

Given an input array (arr) of positive integers, the objective is
to return an output array where each index represents the amount of
times an element appeared (frequency) in the input array.

More specifically, the element at each index of the output array
will be an array (bucket) containing integers that appeared
index-amount-of-times.

Otherwise, slot nils (JavaScript, Java), nils (Ruby), or nil's
(C/C++) where appropriate. A valid array will always be provided.

If an array of [1,2,3,4,4,5,5,5] is passed in, the expected output
should be: [nil, [1,2,3], [4], [5], nil, nil, nil, nil, nil].

Explanation:

// bucketize(arr) ======> outputArray
bucketize([1,2,3,4,4,5,5,5]) ======>
[nil, [1,2,3], [4], [5], nil, nil, nil, nil, nil]

An element cannot appear 0 times, so a nil is placed at outputArray[0].
The elements 1, 2, and 3 appear once. This is why they are located at
outputArray[1]. Notice the elements are grouped together in an array
and sorted in ascending order. The element 4 appears twice. This is why
it is located at outputArray[2]. The element 5 appears three times.
This is why it is located at outputArray[3].

Although an integer could have possibly appeared four, five, six,
seven, or eight times, this is not the case for this particular
example. This is the reason why the elements at outputArray[4],
outputArray[5], outputArray[6], outputArray[7], and outputArray[8]
are all nil values.

=end



p bucketize([2,2,4,4,6,6,9,9,9,9]) == [nil, nil, [2,4,6], nil, [9], nil, nil, nil, nil, nil, nil]
p bucketize([3,3,3,3,2]) == [nil, [2], nil, nil, [3], nil]
p bucketize([5,5,5,5,5]) == [nil, nil, nil, nil, nil, [5]]
p bucketize([77,3,40,40,40]) == [nil, [3,77], nil, [40], nil, nil]
p bucketize([16,7,5,3,6,23]) == [nil, [3,5,6,7,16,23], nil, nil, nil, nil, nil]



###########33
=begin
i: array of number
o: array with the same amount of elements as the input array
   in each index position are placed the elements that occur index times
   no occurance => nil
f: count number of items in input => len
   do 0..len times
    select items that occur index times
    put the result in an sub array or nil in the output array for that
    index

=end

def bucketize(arr)
  output = []
  (0..arr.size).each do |ind|
    output_item = arr.select { |item| arr.count(item) == ind }.uniq.sort
    output_item.empty? ? output << nil : output << output_item
  end
  output
end