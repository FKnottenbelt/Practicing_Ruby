=begin
    Write a program which asks for a person's first name, then middle, then last. 
    Finally, it should greet the person using their full name.
=end
puts "tell me your first name"
first_name = gets.chomp
puts "tell me your middle name"
middle_name = gets.chomp
puts "tell me your last name"
last_name = gets.chomp

puts "Well hello there #{first_name} #{middle_name} #{last_name}!"

=begin
    Write a program which asks for a person's favorite number. 
    Have your program add one to the number, then suggest the result as a 
    bigger and better favorite number. (Do be tactful about it, though.)
=end
puts "What is your favorite number?"
fav_num = gets.chomp
#bigger_num = fav_num.to_i + 1
puts "As an american, don't you like this bigger one (#{fav_num.to_i + 1}) more?"