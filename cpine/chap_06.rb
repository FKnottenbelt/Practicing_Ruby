=begin
"99 bottles of beer on the wall..." Write a program which prints out 
the lyrics to that beloved classic, that field-trip favorite: 
"99 Bottles of Beer on the Wall."

99 bottles of beer on the wall.
99 bottles of beer, take one down pass it around.
98 bottles of beer on the wall.
98 bottles of beer on the wall.
98.
=end

num_bottles = 5
loop do
  puts "#{num_bottles} of beer on the wall."
  puts "#{num_bottles} of beer, take one down pass it around."
  num_bottles -= 1
  2.times {puts "#{num_bottles} of beer on the wall."}
  break if num_bottles <= 0
end
puts "Time to go home and sleep it off..."

puts ""
puts ""
############################################################
# Write a Deaf Grandma program + extended features (she doesn't want
# you to leave)

loop do 
  random_year = (rand(21) + 1930)  #between 1930 and 1950
  
  puts "say something to grandma: "
  i_said = gets.chomp
  
  break if i_said == "BYE BYE BYE"
  
  if i_said == i_said.upcase 
    puts "NO, NOT SINCE #{random_year}!"
  else
    puts "HUH?!  SPEAK UP, SONNY!"
  end

end

puts "Bye Sonny, come again soon"

puts ""
puts ""

############################################################=
=begin
  leap years
    leap year kan /4 dus %4 == 0
    maar geen leap als %100 == 0
    tenzij en %100 == 0 en %400 = 0
=end

puts "give me a starting year"
start_year = Integer(gets.chomp)
puts "give me an ending year"
end_year = Integer(gets.chomp)

year = start_year

for year in start_year..end_year
  # find out if it's a leap year
  
  if (year % 4 == 0) && (year % 100 != 0) 
    leap_year = true
  elsif (year % 100 == 0) && (year % 400 == 0)
    leap_year = true
  else
    leap_year = false
  end
  
  puts "#{year} is a leap year!" if leap_year == true
  year = year + 1
end