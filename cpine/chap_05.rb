=begin
Write an Angry Boss program. It should rudely ask what you want. 
Whatever you answer, the Angry Boss should yell it back to you, 
and then fire you. For example, if you type in I want a raise., 
it should yell back WHADDAYA MEAN "I WANT A RAISE."?!?  YOU'RE FIRED!!
=end

puts "What do you want minon?"
answer = gets.chomp
puts "WHADDAYA MEAN '#{answer.upcase}'?!?  YOU'RE FIRED!!"

=begin
Write a program which will display a Table of Contents so that it looks like this:

                Table of Contents                
                                                 
Chapter 1:  Numbers                        page 1
Chapter 2:  Letters                       page 72
Chapter 3:  Variables                    page 118
=end
line_widht = 40
puts('Table of contents'.center(line_widht))
puts('Chapter 1: Numbers'.ljust(line_widht/2) + 'page 1'.rjust(line_widht/2))
puts('Chapter 2: Letters'.ljust(line_widht/2) + 'page 72'.rjust(line_widht/2))
puts('Chapter 3: Variable'.ljust(line_widht/2) + 'page 118'.rjust(line_widht/2))
# looks weird but does work....