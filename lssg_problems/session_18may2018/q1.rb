# Write a function toWeirdCase (weirdcase in Ruby) that accepts a string, and
#returns the same string
# with every 4th character in a word upcase. Other characters should remain the
#same.

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'LorEm IpsUm is simPly dumMy texT of the priNtinG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a lonG estAbliShed facT thaT a reaDer wilL be disTracTed'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Merry Poppins word is supercalifragilisticexpialidocious') == 'MerRy PopPins worD is supErcaLifrAgilIstiCexpIaliDociOus'





















puts "#### solutions ####"

# no 1
=begin
i: setence string
o: same string but every 4th char in a word in upcase
f: split in to words
   every 4th char of a word convert to upcase
   so split word in chars, loop and count. every 4th is upcase
   join back word
   join back to sentence
=end
def multiple_of_4?(num)
  div, remainder = num.divmod(4)
  remainder == 0
end

def to_weird_case(string)
  string.split().map do |word|
   word.split('').map.with_index do |char, index|
     if multiple_of_4?(index + 1)
        char.upcase
     else
        char
     end
    end.join
  end.join(' ')
end

###
# no 2, better at comming to 4ht
def to_weird_case(string)
  string.split().map do |word|
   word.split('').map.with_index do |char, index|
     if ((index + 1) % 4 == 0)
        char.upcase
     else
        char
     end
    end.join
  end.join(' ')
end
