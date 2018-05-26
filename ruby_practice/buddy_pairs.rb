# buddy_pairs.rb 5 kyu
=begin
Buddy pairs

You know what divisors of a number are. The divisors of a positive integer n are
said to be proper when you consider only the divisors other than n itself. In the
following description, divisors will mean proper divisors.
For 100 they are 1, 2, 4, 5, 10, 20, 25, and 50.

Let s(n) be the sum of these proper divisors of n.
Call buddy two positive integers such that the sum of the proper divisors of each
number is one more than the other number.
(n m) are a pair of buddy if s(m) = n + 1 and s(n) = m + 1.
Example

(48 75) is such a pair.
Divisors of 48 are 1 2 3 4 6 8 12 16 24 -> sum = 76 ie 75 + 1
Divisors of 75 are 1 3 5 15 25  -> sum = 49 ie 48 + 1

Task

given two positive integers start and limit the function buddy(start, limit)
finds the first pair (n m) of buddy pairs such that n (positive integer) is
between start (inclusive) and limit (inclusive); m can be greater than limit
and has to be greater than n.

buddy(10, 50) returns "(48 75)"
buddy(48, 50) returns "(48 75)"

If there is no buddy pair satisfying the conditions let us return "Nothing".
Note

Translators are welcome for all languages, except for Ruby since the Bash
random tests needing Ruby a Ruby reference solution is already there though
not yet published.
=end

p buddy(10, 50) == "(48 75)"
p buddy(48, 50) == "(48 75)"
p buddy(1071625, 1103735) == "(1081184 1331967)"
p buddy(57345, 90061) == "(62744 75495)"
p buddy(2177, 4357) == "Nothing"







puts '######## solution ###########'

i: 2 integers. start and limit
o: budy pairs in () and string: "(48 75)" or 'Nothing'
r: n is between start and limit. m > n
f:  - get divisors
      - from counter = 1 to counter = n:
        if n/counter = 0 keep
    - get sum for input (n)
    - get sum for s(n) - 1  = s(m)
    - if n = s(m -1) you have a buddy pair. break
    -   else n + 1 and loop until n = limit
    - if not found return nothing
=end

def divisors(n)
  arr = []
  1.upto(n-1) { |i| arr << i if (n % i) == 0 }
  arr.sum
end

def buddy(start, nd)
  n = start
  loop do
    break if n > nd
    sum_n = divisors(n)
    m = sum_n - 1
    sum_m = divisors(m)
    if n == sum_m - 1 && m > n
      return "(#{n} #{m})"
    end
    n += 1
  end
  "Nothing"
end

p buddy(10, 50) == "(48 75)"
p buddy(48, 50) == "(48 75)"
p buddy(1071625, 1103735) == "(1081184 1331967)"
p buddy(57345, 90061) == "(62744 75495)"
p buddy(2177, 4357) == "Nothing"

################3
# CW solution that is fast enough: (the factors bit makes the difference)
def buddy(start, nd)
  (start..nd).each do |n|
    t = s(n)
    next if t < n
    return "(#{n} #{t-1})" if s(t-1) == n+1
  end

  "Nothing"
end

def s(n)
  factors_of(n).reduce(0, :+)
end

require 'prime'
def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = Array(powers).map { |i| (0..i).to_a }
  divisors = Array(exponents.shift).product(*exponents).map do |powers|
    primes.zip(powers).map { |prime, power| prime ** power }.inject(1, :*)
  end
  divisors - [number]
end

p buddy(10, 50) == "(48 75)"
p buddy(48, 50) == "(48 75)"
p buddy(1071625, 1103735) == "(1081184 1331967)"
p buddy(57345, 90061) == "(62744 75495)"
p buddy(2177, 4357) == "Nothing"