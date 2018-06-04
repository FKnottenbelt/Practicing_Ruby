# spinwords.rb 6 kyu

=begin
Write a function that takes in a string of one or more words, an
returns the same string, but with all five or more letter words
reversed (Just like the name of this Kata). Strings passed in will
consist of only letters and spaces. Spaces will be included only when
more than one word is present.
=end


p spinWords( "Hey fellow warriors" ) == "Hey wollef sroirraw"
p spinWords( "This is a test") == "This is a test"
p spinWords( "This is another test" ) == "This is rehtona test"
















############333
=begin
i: string
o: string with all >= 5 letterwords reversed
p: find words that are >= 5 letters and reversed those in the string
f: loop through words
   look at size
     if >= 5 chars, reverse
   output transformed string
=end

def spinWords(string)
  string.split.map do |words|
    words.size >= 5 ? words.reverse : words
  end.join(' ')
end


# top solutions
def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end
#
def spinWords(string)
  string.split.map { |s| s.length >= 5 ? s.reverse : s }.join ' '
end