# see_you_next_happy_year.rb 7 kyu

=begin
Scenario

You're saying good-bye your best friend , See you next happy year .

Happy Year is the year with only distinct digits , (e.g) 2018
Task

Given a year, Find The next happy year or The closest year You'll see your
best friend !alt !alt
Notes

    Year Of Course always Positive .
    Have no fear , It is guaranteed that the answer exists .
    It's not necessary that the year passed to the function is Happy one .
    Input Year with in range (1000  ≤  y  ≤  9000)

Input >> Output Examples:

1- nextHappyYear (7712) ==> return (7801)

Explanation:

As the Next closest year with only distinct digits is 7801 .

2- nextHappyYear (8989) ==> return (9012)

Explanation:

As the Next closest year with only distinct digits is 9012 .

3- nextHappyYear (1001) ==> return (1023)

Explanation:

As the Next closest year with only distinct digits is 1023 .
=====
i: year
o: year
f: break up it digits, see if uniq if not next counter
=end

def next_happy_year(year)
  loop do
    year += 1
    return year if year.digits.uniq == year.digits
  end
end

p next_happy_year(1001) == 1023
p next_happy_year(1123) == 1203
p next_happy_year(1987) == 2013

# describe "Basic tests" do
#   Test.assert_equals(next_happy_year(1001),1023)
#   Test.assert_equals(next_happy_year(1123),1203)
#   Test.assert_equals(next_happy_year(2001),2013)
#   Test.assert_equals(next_happy_year(2334),2340)
#   Test.assert_equals(next_happy_year(3331),3401)
#   Test.assert_equals(next_happy_year(1987),2013)
#   Test.assert_equals(next_happy_year(5555),5601)
#   Test.assert_equals(next_happy_year(7712),7801)
#   Test.assert_equals(next_happy_year(8088),8091)
#   Test.assert_equals(next_happy_year(8999),9012)
# end