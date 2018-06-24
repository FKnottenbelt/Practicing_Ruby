###########
# There is a bus moving in the city, and it takes and drop some people in each bus stop.
# You are provided with an array of integer arrays. Each integer array has two items which
# represent the number of people to get into the bus (The first item) and the number of
# people to get off the bus (The second item) on each bus stop.
# Your task is to return the number of people who are still in the bus after the last bus station.

puts number([[10, 0], [3, 5], [5, 8]]) == 5
puts number([[3, 0], [9, 1], [4, 10], [12, 2], [6, 1], [7, 10]]) == 17
puts number([[3, 0], [9, 1], [4, 8], [12, 2], [6, 1], [7, 8]]) == 21














#######
=begin
i: multidementional array. [in, out]
o: left in bus (int)
F: var for people in the bus
   loop through array
    for each sub array
     add in
     subtract out
   left. is output
=end

def number(arr)
  in_bus = 0
  arr.each do |subarr|
    in_bus += subarr[0]
    in_bus -= subarr[1]
  end
  in_bus
end


