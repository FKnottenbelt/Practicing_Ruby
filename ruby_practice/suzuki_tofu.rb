# suzuki_tofu.rb 6 kyu

=begin
Help Suzuki purchase his Tofu!

Suzuki has sent a lay steward to market who will purchase some items not
produced in the monastary gardens for the monks. The stewart has with him a
large box full of change from donations earlier in the day mixed in with some
personal items. You will be given a string of items representing the box.

Sort through the items in the box finding the coins and putting aside anything
else.

You will be given a data structure similar to the one below.
box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon monme mon mon
monme mon mon mon mon cloth monme mon mon mon mon mon mon mon mon cloth mon
mon monme mon mon mon mon monme mon mon mon mon mon mon mon mon mon mon mon
mon mon'

Return the following in your solution.

[count of mon coins in box, count of monme coins in box,sum of all coins value
in box, minimum number of coins needed for Tofu]

100 ≤ cost ≤ 1000

cost = 124

returns

[45, 5, 345, 6]

The coins have the following values:

monme = 60

mon = 1

Determine the minimum number of coins to pay for tofu. You must pay with
exact change and if you do not have the correct change return
“leaving the market”.

If the cost of tofu is higher than your total amount of money also return
“leaving the market”

# tests:
box = "mon monme"
cost = 5
p buy_tofu(cost,box) =='leaving the market'

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon monme mon mon monme mon mon mon mon cloth monme mon mon mon mon mon mon mon mon cloth mon mon monme mon mon mon mon monme mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
p buy_tofu(cost,box) == [45, 5, 345, 6]

box = 'mon mon mon'
cost = 674
p buy_tofu(cost,box) == 'leaving the market'

box = 'monme mon mon monme'
cost = 1
p buy_tofu(cost,box) == [2,2,122,1]

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon monme mon mon mon mon cloth mon mon mon mon mon mon mon mon mon cloth mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
p buy_tofu(cost,box) == [121, 1, 181, 65]
=end












puts '############ solutions'
=begin
i: string with box items
o: [count of mon coins in box,
    count of monme coins in box,
    sum of all coins value in box,
    minimum number of coins needed for Tofu]
    or “leaving the market”
r: 100 ≤ cost ≤ 1000
   monme = 60
   mon = 1
   You must pay with exact change and if you do not have the correct change
   return “leaving the market”.
   If the cost of tofu is higher than your total amount of money also
   return “leaving the market”
p: take coins out of the box
   Determine the minimum number of coins to pay for tofu.
f: - count number of mon en monme in box => array
    - assign to mon and monme
   - Determine the minimum number of coins to pay for tofu:
     - decrease the cost by the value of the monme you have:
       see how many of your monmes are needed
       as long as cost is greater than a monmes worth
         and you still have monmes left
           lower the cost by 1 monme (and keep track of how many monme
           you 'spend')
   - cost is now the cost you have to pay in mon
     - total cash = coins converted to mon (mon+monme*60)
     - min_num_of_coins = the cost(mons) + monmes you spend
     - if you don't have that  => leave
   - return array
=end

def buy_tofu cost, box
  # count number of mon en monme in box => array
  # assign to mon and monme
  mon, monme = %w(mon monme).map{|w|box.split.count w}
  # decrease the cost by the value of the monme you have:
  # see how many of your monmes are needed
  # as long as cost is greater than a monmes worth
  #   and you still have monmes left
  #     lower the cost by 1 monme (and keep track of how many monme
  #     you 'spend')
  n = 0
  while cost >= 60 && n < monme
    n += 1
    cost -= 60
  end

  # cost is now the cost you have to pay in mon
  # total cash converted to mon
  # min_num_of_coins = the cost(mons) + monmes you spend
  cost > mon ? 'leaving the market' : [mon, monme, mon+monme*60, n+cost]
end

# tests:
box = "mon monme"
cost = 5
p buy_tofu(cost,box) =='leaving the market'

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon monme mon mon monme mon mon mon mon cloth monme mon mon mon mon mon mon mon mon cloth mon mon monme mon mon mon mon monme mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
p buy_tofu(cost,box) == [45, 5, 345, 6]

box = 'mon mon mon'
cost = 674
p buy_tofu(cost,box) == 'leaving the market'

box = 'monme mon mon monme'
cost = 1
p buy_tofu(cost,box) == [2,2,122,1]

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon monme mon mon mon mon cloth mon mon mon mon mon mon mon mon mon cloth mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
p buy_tofu(cost,box) == [121, 1, 181, 65]  # fails...

#####
# top solution
def buy_tofu cost, box
  mon, monme = %w(mon monme).map{|w|box.split.count w}
  n = 0
  while cost >= 60 && n < monme
    n += 1
    cost -= 60
  end
  cost > mon ? 'leaving the market' : [mon, monme, mon+monme*60, n+cost]
end

# other top:
def buy_tofu(cost,box)
  a = []
  a << box.split(' ').to_a.select{|i| i == 'mon'}.size
  a << box.split(' ').to_a.select{|i| i == 'monme'}.size
  a << a[0] * 1 + a[1] * 60
  if cost/60 >= a[1] && cost-a[1]*60/1 <= a[0]
      a << a[1] + cost-a[1]*60/1
      return a
  elsif cost/60 <= a[1] && cost%60/1 <= a[0]
      a << cost/60 + cost%60/1
      return a
  else
    return "leaving the market"
  end
end

#
def buy_tofu(cost,box)
  arr = box.split()
  n_mon = arr.count('mon')
  n_monme = arr.count('monme')
  value = n_monme*60 + n_mon
  return 'leaving the market' if cost > value
  need_monme, need_mon = cost.divmod(60)
  if need_monme > n_monme
    need_mon += 60*(need_monme-n_monme)
    need_monme -= need_monme-n_monme
  end
  return 'leaving the market' if need_mon > n_mon
  [n_mon, n_monme, value, need_monme + need_mon]
end
