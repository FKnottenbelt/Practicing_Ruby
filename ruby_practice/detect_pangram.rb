# detect_pangram.rb 6 kyu

=begin
A pangram is a sentence that contains every single letter of the alphabet at
least once. For example, the sentence "The quick brown fox jumps over the
lazy dog" is a pangram, because it uses the letters A-Z at least once
(case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is,
False if not. Ignore numbers and punctuation.
=end



pangram = "The quick, brown fox jumps over the lazy dog!"
p is_pangram(pangram) == true














puts '######## solution ###########'
=begin
i: string
o: boolean true if every letters in a..z
f: downcase and select only letters
   make arr a..z
   do arr minums input array
   result should be empty
=end

def is_pangram(pangram)
  pangram = pangram.downcase.split('').select { |char| ('a'..'z').include?(char) }
  all_letters = ('a'..'z').to_a
  all_letters - pangram == [] ? true : false
end

# alternative
=begin
input downcase
input to array
a..z to array
substract a..z from input
rest should not contain letters
=end
def is_pangram(string)
  string = string.downcase.split('')
  all_letters = ('a'..'z').to_a
  rest = string - all_letters
  rest.count{ |char| all_letters.include?(char) } == 0
end
