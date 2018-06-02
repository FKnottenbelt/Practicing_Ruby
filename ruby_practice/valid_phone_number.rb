# valid_phone_number.rb 6 kyu

=begin
Write a function that accepts a string, and returns true if it is in the
form of a phone number.
Assume that any integer from 0-9 in any of the spots will produce a valid
phone number.

Only worry about the following format:
(123) 456-7890 (don't forget the space after the close parentheses)

=end

p validPhoneNumber("(123) 456-7890") == true
p validPhoneNumber("(1111)555 2345")  == false
p validPhoneNumber("(098) 123 4567")  == false














##########################33333
=begin
i: string
o: boolean . true if valid
r: valid format: (123) 456-7890
f: check non num positions
   check rest for positive integers

   loop trough string
=end

def validPhoneNumber(string)
  return false if string.nil? || string.empty?
  counter = 0

  loop do
    break if counter == string.size
    current_char = string[counter]

    case counter
    when 0
      return false if current_char != '('
    when 4
      return false if current_char != ')'
    when 5
      return false if current_char != ' '
    when 9
      return false if current_char != '-'
    else
      return false if current_char.to_i.to_s != current_char
    end
    counter += 1
  end

  return true
end

# top solutions
def validPhoneNumber(phoneNumber)
  !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
end

#
def validPhoneNumber(number)
  phone = "(000) 000-0000"
  number.gsub!(/[123456789]/, '0')
  return true if phone == number
  return false
end