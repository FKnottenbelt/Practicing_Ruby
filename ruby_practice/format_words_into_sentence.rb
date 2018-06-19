# format_words_into_sentence.rb 6 kyu

=begin
Complete the method so that it formats the words into a single comma separated
value. The last word should be separated by the word 'and' instead of a comma.
The method takes in an array of strings and returns a single formatted string.
Empty string values should be ignored. Empty arrays or null/nil values being
passed into the method should result in an empty string being returned.

=end


p format_words(['ninja', 'samurai', 'ronin']) == "ninja, samurai and ronin"
p format_words(['ninja', '', 'ronin']) == "ninja and ronin"
p format_words([]) == ""

# edge case extra's
p format_words(nil) == ""
p format_words([nil]) == ""
p format_words(['ninja', 'samurai']) == 'ninja and samurai'
p format_words(['ninja']) == 'ninja'
p format_words(['']) == ''









puts '######## solution ###########'
=begin
i: array with words
o: sentence (string)
r: words separated by ,  ninje, samurai
   last one: 'and'
   input nil or '' -> ""
f: have to get rid of extra spaces first:
     join to string, split back out (will squeeze by design)
   if there is only one word, just join and return
   take the last to words (slice from end)
   meld those together with 'and'
   push them back
   join with comma space
   output word

=end

def format_words(words)
  return "" if words.empty?
  return words.join if words.size <= 1
  words = words.join(" ").split()
  ending = words.slice!(-2, 2).join(' and ')
  words.push(ending).join(', ')
end

# top solution
def format_words(words)
  words.reject(&:empty?).join(', ').gsub(/, (\w+)$/) { " and #{$1}" } rescue ''
end

# top solution without regex
def format_words(words)
  return "" if words.nil?
  words.reject! { |word| word == "" }
  words << words.pop(2).join(" and ")
  words.join(", ")
end
