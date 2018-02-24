# multiples_of_3_and_5.rb 6kyu

# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of
# 3 or 5 below the number passed in.

#     Note: If the number is a multiple of both 3 and 5, only count it once.


def solution(number)
  sum = 0
  for n in 3...number
    if n % 5 == 0 && n % 3 == 0 or
       n % 5 == 0 or n % 3 == 0
        sum = sum + n
    end
  end
  sum
end

p solution(10, 23)
p solution(20, 78)
p solution(200, 9168)

# top solutions
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

