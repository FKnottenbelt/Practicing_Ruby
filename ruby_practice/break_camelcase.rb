# break_camelcase.rb 6 kyu
=begin
Complete the solution so that the function will break up camel casing, using
a space between words.
=end



p solution('camelCasing') # => should return 'camel Casing'
p solution('camel NotCasing')
p solution('Camel NotCasing')



















#################
=begin
i: string
o: broken up string
f: if a lowcase char is followed by an uppercase char, insert space
  - search for un uppercase char with index > 0
    - loop and check for upcase and index > 0
    - if found check index -1, insert space if needed
      write to output
      - else just write to ouput
  - since we are transforming, use map
=end

def solution(string)
  string.chars.map.with_index do |char, index|
    if  ('A'..'Z').include?(char) && index > 0 &&
        ('a'..'z').include?(string[index - 1])
         " "+ char
    else
      char
    end
  end.join
end

# top solution (but both fail my tests)
def solution(string)
  string.gsub /([A-Z])/, ' \1'
end

def solution(string)
  string.chars.map { |s| s == s.downcase ? s : " #{s}" }.join
end