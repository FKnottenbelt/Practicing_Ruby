# bookseller.rb 6 kyu

=begin
A bookseller has lots of books classified in 26 categories labeled
A, B, ... Z. Each book has a code c of 3, 4, 5 or more capitals letters.
The 1st letter of a code is the capital letter of the book category. In the
bookseller's stocklist each code c is followed by a space and by a positive
integer n (int n >= 0) which indicates the quantity of books of this code
in stock.

For example an extract of one of the stocklists could be:

L = {"ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"}.
or
L = ["ABART 20", "CDXEF 50", "BKWRK 25", "BTSQZ 89", "DRTYM 60"] or ....

You will be given a stocklist (e.g. : L) and a list of categories in capital
letters e.g :

  M = {"A", "B", "C", "W"}
or
  M = ["A", "B", "C", "W"] or ...

and your task is to find all the books of L with codes belonging to each
category of M and to sum their quantity according to each category.

For the lists L and M of example you have to return the string (in
Haskell/Clojure a list of pairs):

  (A : 20) - (B : 114) - (C : 50) - (W : 0)

where A, B, C, W are the categories, 20 is the sum of the unique book of
category A, 114 the sum corresponding to "BKWRK" and "BTSQZ", 50 corresponding
to "CDXEF" and 0 to category 'W' since there are no code beginning with W.

If L or M are empty return string is "" (Clojure should return an empty array
instead).
Note:

In the result codes and their values are in the same order as in M.
=end

=begin
r: 26 catogories A..Z
   per book: code c of 3, 4, 5 or more capitals letters
     1st letter of a code is the capital letter of the book category
   stocklist: code space n (n is num in stock)

   and your task is to find all the books of L(stock) with codes belonging
   to each category of M and to sum their quantity according to each category.
o: string like (A : 20) - (B : 114) - (C : 50) - (W : 0) in Cat order
   when stocklist or categorie is empty return ""
i: array b en c
p: take first c, find all b's that start with c. add their nums
   output as (c : num) . All joined by space-space
f: make hash out of b per cat
   loop through c, find value in hash
   make stringoutput in array
   join array
=end

def stockList(listOfArt, listOfCat)
  return "" if listOfArt == [] || listOfCat == []

  stock = Hash.new{0}
  listOfArt.each do |item|
    arr = item.split
    stock[arr[0][0]] += arr[1].to_i
  end

  output = []
  listOfCat.each do |category|
    in_stock = stock[category]
    output << "(#{category} : #{in_stock})"
  end
  output.join(' - ')
end

# test
b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B"]
res = "(A : 200) - (B : 1140)"
p stockList(b, c) == res

b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = []
res = ""
p stockList(b, c) == res

b = []
c = ["A", "B"]
res = ""
p stockList(b, c) == res

b = ["CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B"]
res = "(A : 0) - (B : 1140)"
p stockList(b, c) == res

# top solution
def stockList(stock_list, categories)
  return "" if stock_list.empty? || categories.empty?

  quantities = Hash.new(0)
  stock_list.each_with_object(quantities) do |item, quantities|
    code, quantity = item.split(" ")
    quantities[code[0]] += quantity.to_i
  end

  categories.map { |category| "(#{category} : #{quantities[category]})" }.join(" - ")
end