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
##########################################
=begin
Write a program which will display a Table of Contents so that it looks like this:

           Table of contents            
Chapter 1: Numbers                page 1
Chapter 2: Letters               page 72
Chapter 3: Variable             page 118

but now from an array...
=end
my_table =["Table of Contents","Chapter 1: Numbers","page 1","Chapter 2: Letters",
  "page 72","Chapter 3: Variable","page 118"]

line_widht = 40
my_table.each { |i| 
  if my_table.index(i) == 0 
    puts i.center(line_widht)
  elsif my_table.index(i).odd?
    print i.ljust(line_widht/2)
  else
    puts i.rjust(line_widht/2)
  end
}
