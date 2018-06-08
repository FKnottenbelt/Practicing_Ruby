# create_phone_number.rb

=begin
Write a function that accepts an array of 10 integers (between 0 and 9),
that returns a string of those numbers in the form of a phone number.
Example:

createPhoneNumber(Array[1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns
"(123) 456-7890"

The returned format must be correct in order to complete this challenge.
Don't forget the space after the closing parentheses!
=end

p createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == "(123) 456-7890"

















puts '######## solution ###########'
=begin
i: arr
o: formatted string "(123) 456-7890"
f: use insert to insert extra chars
   join

=end

def createPhoneNumber(arr)
  arr.insert(0, '(')
  arr.insert(4, ') ')
  arr.insert(8, '-')
  arr.join
end

# alternative
def createPhoneNumber(arr)
  number = "(000) 000-0000"
  arr.each do |int|
    number.sub!('0', int.to_s)
  end
  number
end

# top solutions
def createPhoneNumber(array)
  '(%d%d%d) %d%d%d-%d%d%d%d' % array
end

#
def createPhoneNumber(str)
  "(#{str[0..2].join}) #{str[3..5].join}-#{str[6..10].join}"
end