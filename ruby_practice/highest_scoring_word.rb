# highest_scoring_word.rb 6 kyu

=begin
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to it's position in the
alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in
the original string.

All letters will be lowercase and all inputs will be valid.

=end

=begin
i: sentence
o: first hightest scoring word
f: loop through words
    determine word score
       put a..z in arr and use their index as points
       loop through chars, add char to word total
    compare to savewordscore and replace saveword and savewordscore
    if higher
    retrun saveword as string
=end

def high(sentence)
  saveword = ''
  savewordscore = 0
  letters = ('a'..'z').to_a

  sentence.split.each do |word|
    wordscore = 0

    word.each_char do |char|
      wordscore += (letters.index(char) + 1)
    end

    if wordscore > savewordscore
      saveword = word
      savewordscore = wordscore
    end
  end
  saveword
end

p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'

# top solution
def high(x)
  x.split.max_by { |w| score_word(w) }
end

def score_word(word)
  word.chars.inject(0) { |sum, ch| sum + (ch.ord - 96) }
end