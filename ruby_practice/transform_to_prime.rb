# transform_to_prime.rb 6 kyu

=begin
Task :

Given a List [] of n integers , find minimum mumber to be inserted in a
list, so that sum of all elements of list should equal the closest prime
number .
Notes

    List size is at least 2 .

    List's numbers will only positives (n > 0) .

    Repeatition of numbers in the list could occur .

    The newer list's sum should equal the closest prime number .

Input >> Output Examples

1- minimumNumber ({3,1,2}) ==> return (1)

Explanation:

    Since , the sum of the list's elements equal to (6) , the minimum
    number to be inserted to transform the sum to prime number is (1) ,
    which will make the sum of the List equal the closest prime number (7) .

2-  minimumNumber ({2,12,8,4,6}) ==> return (5)

Explanation:

    Since , the sum of the list's elements equal to (32) , the minimum
    number to be inserted to transform the sum to prime number is (5) ,
    which will make the sum of the List equal the closest prime number (37) .

3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)

Explanation:

    Since , the sum of the list's elements equal to (189) , the minimum
    number to be inserted to transform the sum to prime number is (2) ,
    which will make the sum of the List equal the closest prime number (191) .

=end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2





#############
=begin
i: array of int
o: number to insert to make sum of input to be next prime number
f: sum array
   write is prime? method
    - range 2 ... n
    - n % range-item == 0 then false

   find next prime number
    - counter = 0
    - see if you have prime
    - if not, add 1 to counter and 1 to sum, see if you have prime
    - repeat till you have prime

    output counter

=end

#require'prime'
def is_prime?(num)
  (2...num).each do |i|
    return false if num % i == 0
  end
  true
end

def minimum_number(arr)
  counter = 0
  sum = arr.sum
  loop do
    return counter if is_prime?(sum) # if sum.prime?
    counter += 1
    sum += 1
  end
end

# top solutions
require 'prime'
def minimum_number(numbers)
  Prime.find { |prime| prime >= numbers.sum } - numbers.sum
end

#
require'prime'
def minimum_number(nums)
  sum = start = nums.sum; sum += 1 if sum.even?
  sum += 2 until sum.prime?
  sum - start
end