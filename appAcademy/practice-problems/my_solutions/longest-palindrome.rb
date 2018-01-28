# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
  arr = string.split("")
  index = 0
  longest1 = ""
  longest2 = ""
  longest3 = ""
  longest_arr = []
  longest = ""
  substring = ""
  len = string.length
  
  # 1) move index up
  index = 0
  len = string.length  
  while longest1 == ""
    substring = arr.slice(index, len)
    if palindrome?(substring.join())
      longest1 = substring.join()
      longest_arr.push(longest1)
    else 
      index += 1
    end
  end
  
  # 2) move len down
  index = 0
  len = string.length  
  while longest2 == ""
    substring = arr.slice(index, len)
    if palindrome?(substring.join())
      longest2 = substring.join()
      longest_arr.push(longest2)
    else 
      len -= 1
    end
  end  
  
  # 3) move index up and len down
  index = 0
  len = string.length   
  while longest3 == ""
    substring = arr.slice(index, len)
    if palindrome?(substring.join())
      longest3 = substring.join()
      longest_arr.push(longest3)
    else 
      len -= 2
      index += 1
    end
  end  
  
  longest = longest_arr.max { |a,b| a.length <=> b.length}
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
