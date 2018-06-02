# sequences_and_series.rb 6 kyu
=begin
Have a look at the following numbers.

 n | score
---+-------
 1 |  50
 2 |  150
 3 |  300
 4 |  500
 5 |  750

Can you find a pattern in it? If so, then write a function getScore(n)
/get_score(n)/GetScore(n) which returns the score for any positive number n.

=end


p get_score(1) == 50
p get_score(2) == 150
p get_score(3) == 300
p get_score(4) == 500
p get_score(5) == 750







# solution
=begin
n + x = score
0  + 50 = 50  n = 1
50 + 100 = 150  n = 2
150 + 150 = 300 n = 3
300 + 200 = 500  n = 4
500 + 250 = 750

x = n * 50
result + x = new-result
=end

def get_score(n)
  result = 0
  counter = 1
  n.times do
    result += (counter * 50)
    counter += 1
  end
  result
end



# top solution
def get_score(n)
  (1..n).inject(:+) * 50
end