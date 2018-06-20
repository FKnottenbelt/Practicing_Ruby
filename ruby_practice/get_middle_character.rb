# get_middle_character.rb 7 kyu

=begin
You are going to be given a word. Your job is to return the middle character
of the word. If the word's length is odd, return the middle character. If the
word's length is even, return the middle 2 characters.

#Examples:

Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A"

#Input

A word (string) of length 0 < str < 1000 (In javascript you may get slightly
more than 1000 in some test cases due to an error in the test cases). You do
not need to test for this. This is only here to tell you that you do not need
to worry about your solution timing out.

#Output

The middle character(s) of the word represented as a string.
===
=end




p get_middle("test") == "es"
p get_middle("testing") =="t"
p get_middle("middle") == "dd"
p get_middle("A") == "A"
p get_middle("of") == "of"





#############3
def get_middle(s)
  s.size.odd? ? s[s.size / 2] : s[(s.size / 2) - 1] + s[s.size / 2]
end

# alternative
=begin
i: string
o: middel (2) chars
p: test = even 4, return 2and3 (half+remainder + 1)
   testing = odd 7 return 4 (half+remainder)
f: half, remainder = len.divmod(2)
   if len is even take letters (half+remainder + 1) but -1 for index
   if len is odd take letters (half+remainder) but -1 for index
=end

def get_middle(string)
  half, remainder = string.size.divmod(2)
  middle = (half + remainder) - 1
  string.size.even? ? string[middle..(middle + 1)] : string[middle]
end

# top solution
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end
