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
i: string  AND index of opening bracket
o: index of matching closing bracket
r: return -1 if not found or 'start' is not an opening bracket
f: - loop. start at 'start'
   - count open and close. if open == close you got it
   - get and return index.
   - return -1 if not found
=end

def solve(string, start)
  open_bracket, close_bracket = 0, 0
  counter = start
  return -1 if string[counter] != '('

  loop do
    return -1 if counter == string.size

    case string[counter]
    when '(' then open_bracket += 1
    when ')' then close_bracket += 1
    end

    break if open_bracket == close_bracket
    counter += 1
  end
  counter
end


p solve("((1)23(45))(aB)", 0) == 10 #// the opening brace at index 0 matches the closing brace at index 10
p solve("((1)23(45))(aB)", 1) == 3
p solve("((1)23(45))(aB)", 2) == -1 #// there is no opening bracket at index 2, so return -1
p solve("((1)23(45))(aB)", 6) == 9
p solve("((1)23(45))(aB)", 11) == 14
p solve("((>)|?(*'))(yZ)", 11) == 14
p solve("(sd", 0) == -1

# top solution
def solve(string, index)
  return -1 unless string[index] == '('
  open_parens_count = 0
  close_parens_count = 0
  string.split('').each_with_index do |c, i|
    open_parens_count += 1 if c == '(' && i >= index
    close_parens_count += 1 if c == ')' && i >= index
    return i if i > index && open_parens_count == close_parens_count
  end
end