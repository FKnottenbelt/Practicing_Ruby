# jumping_kangaroos.rb 7 kyu

=begin
Two kangaroos are jumping on a line. They start out at different points on the
line, and jump in the same direction at different speeds. Your task is to
determine whether or not they'll ever land in the same spot at the same time
(you'll just have to suspend disbelief for a moment and accept that two kangaroos,
for the purpose of this kata, can occupy the same space at the same time :)

Your function is given four arguments (kanga1, rate1, kanga2, rate2); the first
kangaroo's starting point, the first kangaroo's speed, the second kangaroo's
starting point, and the second kangaroo's speed.

Return true if the above conditions are met, else false. Starting location and
speed may vary wildly. The first kangaroo will usually start behind the second
one and travel faster, but not always. Starting locations may be negative, but
speeds will always be > 0.

Example:

kangaroo(kanga1 = 0, speed1 = 3, kanga2 = 4, speed2 = 2)=> true //they meet on
their fourth jump

kangaroo

Other examples:

kangaroo(0,2,5,3)=> false //the first kangaroo starts behind, moves slower,
and never catches up

Brute force solutions are possible (and not discouraged), but you'll save
yourself a lot of waiting time if you don't go that route
=====

=end

def kangaroo(kanga1, rate1, kanga2, rate2)
  if (kanga1 < kanga2 && rate1 <= rate2 || (kanga2 < kanga1 && rate2 <= rate1))
    return false
  end
  return (kanga1-kanga2).abs % (rate1-rate2).abs == 0
end

p kangaroo(0,3,4,2) == true
p kangaroo(0,9,16,4) == false
p kangaroo(0,2,5,3) == false


# Test.describe("Should handle basic inputs") do
#   Test.assert_equals(kangaroo(0,3,4,2), true)
#   Test.assert_equals(kangaroo(0,9,16,4), false)
#   Test.assert_equals(kangaroo(0,2,5,3), false)
#   Test.assert_equals(kangaroo(1571,4240,9023,4234), true)
#   Test.assert_equals(kangaroo(-1571,4240,9023,4234), false)
#   Test.assert_equals(kangaroo(-7855,4240,9023,4234), true)
#   Test.assert_equals(kangaroo(43,5,49,3), true)
#   Test.assert_equals(kangaroo(9023,4240,1571,4234), false)
#   Test.assert_equals(kangaroo(129,15,147,9), true)
#   Test.assert_equals(kangaroo(129,15,147,90), false)
#   Test.assert_equals(kangaroo(0,2,100000,1), true)
#   Test.assert_equals(kangaroo(72893, 11125, 24432, 4202), false)
#   Test.assert_equals(kangaroo(13613, 299, 65130, 73), false)
# end