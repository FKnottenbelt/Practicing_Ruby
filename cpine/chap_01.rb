# how many hours in a year?
dagen = 365
uren_in_dag = 24
hours_in_year = dagen * uren_in_dag
puts "Aantal uren in een jaar is #{hours_in_year}"

# how many minutes in a decade
minuten_in_dag = 24 * 60
minuten_in_jaar = minuten_in_dag * dagen
minuten_in_decade = minuten_in_jaar * 10
puts "Aandat minuten in een decade is #{minuten_in_decade}"

#how many seconds old are you?
seconds_in_day = 24 * (60 * 60)
seconds_in_year = seconds_in_day * dagen
seconden_oud = seconds_in_year * 50
puts "Ik ben #{seconden_oud} seconden oud" 
puts "nb hier moet dan nog de dagen en secs boven de 50 bij... snap uitleg niet"

#how many chocolates do you hope to eat in your life?
chocolates = "lots!"
puts "I hope to eat #{chocolates} of chocolates in my life"

#If I am 1298 million seconds old, how old am I?
age = 1298000000 / 60 / 60 / 24/ 365  # sec min uren dagen jaar
puts "if I am 1298 million seconds old, I am #{age}"
