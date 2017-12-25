=begin
asks us to type in as many words as we want (one word per line, continuing until 
we just press Enter on an empty line), and which then repeats the words back 
to us in alphabetical order.
=end

my_array=[]

loop do
  puts "give me a word"
  word = gets.chomp
  break if word ==""
  
  my_array.push(word) 
  
end

puts my_array.sort
###########################################################
=begin
same, but without the use of .sort.
=end

my_array=[]

loop do
  puts "give me a word"
  word = gets.chomp
  break if word ==""
  my_array.push(word) 
end
print my_array
puts

my_array.length.times {
  my_array.each {|i| num = my_array.index(i)
    if my_array[num] != my_array.last # don't compare out of bounds
      if my_array[num] > my_array[(num+1)]
        #swap:
        my_array[num], my_array[(num+1)] = my_array[(num+1)], my_array[num]
      end
    end
  }
}

puts "Sorted without .sort!: "
print my_array
puts
