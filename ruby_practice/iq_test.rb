# iq_test.rb 6 kyu

# Bob is preparing to pass IQ test. The most frequent task in this
# test is to find out which one of the given numbers differs from
# the others. Bob observed that one number usually differs from the
# others in evenness. Help Bob — to check his answers, he needs a
# program that among the given numbers finds one that is different
# in evenness, and return a position of this number.

# ! Keep in mind that your task is to help Bob solve a real IQ test,
# which means indexes of the elements start from 1 (not 0)

# ##Examples :

# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest
# of the numbers are even

# iq_test("1 2 1 1") => 2 // Second number is even, while the rest
# of the numbers are odd

p iq_test("2 4 7 8 10") == 3
p iq_test("1 2 2") == 1
p iq_test("88 96 66 51 14 88 2 92 18 72 18 88 20 30 4 82 90 100 24 46") == 4
p iq_test("100 99 100") == 2
p iq_test("5 3 2") == 3












##################


def iq_test(numbers)
  arr = numbers.split(" ")
  num = arr.count {|n| n.to_i.even?} == 1 ? arr.select {|n| n.to_i.even?} :
        arr.select{|n| n.to_i.odd?}
  output = arr.index(num[0]) + 1
end

p iq_test("2 4 7 8 10") == 3
p iq_test("1 2 2") == 1
p iq_test("88 96 66 51 14 88 2 92 18 72 18 88 20 30 4 82 90 100 24 46") == 4
p iq_test("100 99 100") == 2
p iq_test("5 3 2") == 3

# top solutions
def iq_test(numbers)
  nums = numbers.split.map(&:to_i).map(&:even?)
  nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
end

def iq_test(numbers)
  ar = numbers.split.map(&:to_i)
  ar.index(ar.partition(&:even?).find(&:one?).first) + 1
end
