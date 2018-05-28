# odd_even_divisors.rb 6 kyu

=begin
Given an integer n return 'odd' if the number of its divisors is odd.
Otherwise return 'even'.

Examples:

All prime numbers have exactly two divisors (hence 'even')

For n=12 the divisors are [1,2,3,4,6,12] – 'even'

For n=4 the divisors are [1,2,4] – 'odd'

return 'odd'/'even' if n has an odd/even respectively number of
divisors (non-uniq)
def oddity(n)
=end


p oddity(4) == 'odd'
p oddity(12) == 'even'










puts '######## solution ###########'
=begin
i: int
o: odd or even as string
f: find divisiors
    - if you can evenly divide by a number
    - range 1 to int. if int % num == 0 add to divisors array
   if count of divisors array is even -> even
   else -> odd
=end

def oddity(n)
  divisors = []
  (1..n).each do |num|
    divisors << num if n % num == 0
  end

  divisors.count.even? ? 'even' : 'odd'
end

p oddity(4) == 'odd'
p oddity(12) == 'even'
