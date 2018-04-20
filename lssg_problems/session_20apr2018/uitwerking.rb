############
## medium
#
# Write a method that takes an array of consecutive (increasing) letters
# as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one
# letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# i: array of letters in order
# o: missing letter
# f: convert array in to array of ord numbers
#   - see where next is missing:
      # - save the first item
      # - then we loop through the letters
      # - if current number is not the next number after save and
      #   also not the same as save
      #   then safe.next is missing
#   - get char of missing, output that as a string

def find_missing_letter(array)
  array.map! {|letter| letter.ord }
  safe = array[0]
  missing = ''
  array.each do |num|
    if num != safe.next && num != safe
      missing = safe.next.chr
    else
      safe = num
    end
  end
  missing
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

# way more elegant:

# solution 2 (easier to read than no 1)
def find_missing_letter arr
  full_arr = (arr[0]..arr[-1]).to_a
  full = full_arr.join('')
  arr = arr.join('')
  full.delete(arr)
end

# solution 1
def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr)[0]
end