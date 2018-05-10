# simple_string_indices.rb 6 kyu

=begin
In this Kata, you will be given a string with brackets and an index of an
opening bracket and your task will be to return the index of the matching
closing bracket. Both the input and returned index are 0-based except in
Fortran where it is 1-based. An opening brace will always have a closing brace.
Return -1 if there is no answer (Haskell return Nothing, Fortran: return 0)

Input will consist of letters, numbers and special characters, but no spaces.
The only brackets will be ( and ).
====
i: string
o: index of matching closing bracket
f: - loop. count open and close. if open == close you got it
   - get and return index.
   - intialize index to -1
=end

def solve(string)
  open_bracket, close_bracket = 1 , 1
  string.split('').each.with_index do |char, index|
    case char
    when '(' then open_bracket += 1
    when ')' then close_bracket += 1
    end

    if open_bracket == close_bracket
      return index
    end
  end
  -1
end

p solve("((1)23(45))(aB)") == 10
# p solve("((1)23(45))(aB)", 0) == 10 #// the opening brace at index 0 matches the closing brace at index 10
# p solve("((1)23(45))(aB)", 1) == 3
# p solve("((1)23(45))(aB)", 2) == -1 #// there is no opening bracket at index 2, so return -1
# p solve("((1)23(45))(aB)", 6) == 9
# p solve("((1)23(45))(aB)", 11) == 14
# p solve("((>)|?(*'))(yZ)", 11) == 14