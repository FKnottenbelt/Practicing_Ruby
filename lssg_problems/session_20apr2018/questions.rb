###############
# hard question (harder than interview. Can do this in time, you're ready)

# Given an array of numbers find if any 3 numbers inside of the array
#   can be multiplied to get the maximum number in the array.
#   If the number is used once it can't be used again. If there are two same numbers then that number can be used 2 times.

# p mult_of_three_nums([1,2,3,4,5,6]) == true
# p mult_of_three_nums([3, 8, 0, 9, 4, 2, 7]) == false
# p mult_of_three_nums([5, 3, 7, 9, 2, 51, 90]) == true
# p mult_of_three_nums([1, 1, 5, 7, 987, 3, 2]) == true
# p mult_of_three_nums([2, 5, 8, 11, 32, 2]) == true
# p mult_of_three_nums([13, 3, 11, 56, 79, 2]) == false


################
# medium question

# Write a method that takes an array of consecutive (increasing) letters
# as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one
# letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# p find_missing_letter(["a","b","c","d","f"]) == "e"
# p find_missing_letter(["O","Q","R","S"]) == "P"
# p find_missing_letter(["b","d"]) == "c"
# p find_missing_letter(["a","b","d"]) == "c"
# p find_missing_letter(["b","d","e"]) == "c"