# camel_case_method.rb 6 kyu

=begin
Write simple .camelCase method (camel_case function in PHP, CamelCase in C# or
camelCase in Java) for strings. All words must have their first letter
capitalized without spaces.

For instance:

'hello case'.camelcase => HelloCase
'camel case word'.camelcase => CamelCaseWord
=end

=begin
i:string
o: camelcase word
f: make into array
   map into captialized words
   join
=end

class String
  def camelcase
    self.split.map {|word|word.capitalize }.join
  end
end

p 'test case'.camelcase == 'TestCase'
p 'camel case method'.camelcase == 'CamelCaseMethod'
p 'say hello '.camelcase == 'SayHello'
p ' camel case word'.camelcase == 'CamelCaseWord'

# top solution
class String
  def camelcase
    self.split.map(&:capitalize).join
  end
end
