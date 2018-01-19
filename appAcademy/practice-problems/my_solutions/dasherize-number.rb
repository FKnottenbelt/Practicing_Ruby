# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  num_array = num.to_s.split("")
  output_string = ""

  num_array.each do |number|
    if number.to_i.odd?
      output_string <<("-" + number + "-")
    else 
      output_string << number
    end
  end
  
  # chop first dash
  if output_string[0] == "-"
    output_string = output_string[1..output_string.length]
  end
  
  # chop last dash
  if output_string[output_string.length-1] == "-"
    output_string.chop!
  end
  
  # chop double dashes
  output_string.gsub!("--","-")
  
  output_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
