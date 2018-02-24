# weird_string_case.rb 6kyu

# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
# returns the same string with all even indexed characters in each word upper
# cased, and all odd indexed characters in each word lower cased. The indexing
# just explained is zero based, so the zero-ith index is even, therefore that
# character should be upper cased.

# The passed in string will only consist of alphabetical characters and
# spaces(' '). Spaces will only be present if there are multiple words.
# Words will be separated by a single space(' ').
# Examples:

# weirdcase( "String" )#=> returns "StRiNg"
# weirdcase( "Weird string case" );#=> returns "WeIrD StRiNg CaSe"

def weirdcase string
  words = string.split()

  words.each do |word|
    word.split('').each_with_index do |letter,i|
      i.even? ? word[i] = letter.upcase : word[i] =letter.downcase
    end
  end
  words = words.join(' ')
end

p weirdcase( "String" )#=> returns "StRiNg"
p weirdcase( "Weird string case" )#=> returns "WeIrD StRiNg CaSe"

## top solutions:
def weirdcase string
  string.gsub(/(\w{1,2})/) { |s| $1.capitalize }
end

def weirdcase(string)
  string.split(' ').map do |word|
    word.split('').each_with_index.map do |char, i|
      i % 2 == 0 ? char.upcase : char.downcase
    end.join('')
  end.join(' ')
end