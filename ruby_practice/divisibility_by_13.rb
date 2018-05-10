# divisibility_by_13.rb 6 kyu

=begin
When you divide the successive powers of 10 by 13 you get the following
remainders of the integer divisions:

1, 10, 9, 12, 3, 4.

Then the whole pattern repeats.

Hence the following method: Multiply the right most digit of the number
with the left most number in the sequence shown above, the second right
most digit to the second left most digit of the number in the sequence.
The cycle goes on and you sum all these products. Repeat this process
until the sequence of sums is stationary.

...........................................................................

Example: What is the remainder when 1234567 is divided by 13?

7×1 + 6×10 + 5×9 + 4×12 + 3×3 + 2×4 + 1×1 = 178

We repeat the process with 178:

8x1 + 7x10 + 1x9 = 87

and again with 87:

7x1 + 8x10 = 87

...........................................................................

From now on the sequence is stationary and the remainder of 1234567 by
13 is the same as the remainder of 87 by 13: 9

Call thirt the function which processes this sequence of operations on
an integer n (>=0). thirt will return the stationary number.

thirt(1234567) calculates 178, then 87, then 87 and returns 87.

thirt(321) calculates 48, 48 and returns 48
==

i: integer
o:
f: split input into digits
   make 1, 10, 9, 12, 3, 4 into an circle_arry
   mutiply the digits pop with the next number in circle_array
   write product to product array
   rotate the circle array
   repeat till end of digits
   sum the product array

   save the sum
   repeat with the sum until sum equals saved sum
   output the sum as an integer
=end

def sum_digits(n)
  digits = n.digits.reverse
  circle_array = [1, 10, 9, 12, 3 , 4]
  product = []

  loop do
    break if digits == []
    product << digits.pop * circle_array.first
    circle_array.rotate!(1)
  end

  product.sum
end

def thirt(n)
  saved_sum = 0
  loop do
    sum = sum_digits(n)
    break if saved_sum == sum
    saved_sum = sum
    n = sum
  end
  saved_sum
end

p thirt(8529) == 79
p thirt(85299258) == 31
p thirt(5634) == 57
p thirt(1111111111) == 71
p thirt(987654321) == 30

# top solutions
def thirt(num)
  loop do
    seq = [1, 10, 9, 12, 3, 4].cycle
    seq_sums = num.to_s.chars.reverse.reduce(0) { |sum, n| sum + n.to_i * seq.next }
    return seq_sums if seq_sums == num
    num = seq_sums
  end
end

###
def thirt(n)
  sums = [n]
  sums << remainder_sum(sums.last) until sums[-1] == sums[-2]
  sums.last
end

def remainder_sum(n)
  digits(n).reverse.map.with_index { |d,i| d * (10 ** i % 13) }.reduce(:+)
end

def digits(n)
  n.to_s.chars.map(&:to_i)
end
