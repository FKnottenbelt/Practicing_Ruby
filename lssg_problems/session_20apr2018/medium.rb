# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# find_missing_letter(["a","b","c","d","f"]) == "e"
# find_missing_letter(["O","Q","R","S"]) == "P"
# find_missing_letter(["b","d"]) == "c"
# find_missing_letter(["a","b","d"]) == "c"
# find_missing_letter(["b","d","e"]) == "c"

=begin
(["a","b","c","d","f"])

"a" "b" "c" "d" "e" "f"   --> abcdef

abcdf

abcdef(abcdf)  --> 'e'

=end

# solution 1
def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr)[0]
end

# solution 2
def find_missing_letter arr
  full_arr = (arr[0]..arr[-1]).to_a
  full = full_arr.join('')
  arr = arr.join('')
  full.delete(arr)
end

