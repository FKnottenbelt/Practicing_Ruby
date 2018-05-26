# consecutive_strings.rb 6 kyu

=begin
You are given an array strarr of strings and an integer k. Your task is
to return the first longest string consisting of k consecutive strings taken
in the array.

#Example: longest_consec(["zone", "abigail", "theta", "form", "libe",
"zas", "theta", "abigail"], 2) --> "abigailtheta"

n being the length of the string array, if n = 0 or k > n or k <= 0 return "".

=end


p longest_consec(["zone", "abigail", "theta", "form", "libe",
"zas", "theta", "abigail"], 2) == "abigailtheta"
p longest_consec([], 3) == ""
p longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], -2) == ""
p longest_consec(["it","wkppv","ixoyx", "3452", "zzzzzzzzzzzz"], 15) == ""










puts '######## solution ###########'

=begin
i: array of starts and in integer (k)
o: the longest comibword that k consecutive strings can make
   if there are more, take first
r: if n = 0 or k > n or k <= 0 return ""
p: what is the biggest substring of k comibinations
f: loop through starts
     get substring from word to word + k
     make that into string
     see if size bigger than safe size. if so : safe
   output safe

=end
def longest_consec(strarr, k)
  return "" if strarr.length == 0 || k > strarr.length || k <= 0

  longest = ''
  strarr.each.with_index do |v, ind|
    substring = strarr[ind...(ind + k)].join
    longest = substring if substring.size > longest.size
  end
  longest
end

# top solution
def longest_consec(strarr, k)
  return "" unless k.between?(1, strarr.length)
  strarr.each_cons(k).map(&:join).max_by(&:length) || ""
end