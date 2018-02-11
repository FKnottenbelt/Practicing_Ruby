# Pick peaks

# In this kata, you will write a function that returns the positions and the values 
# of the "peaks" (or local maxima) of a numeric array.

# For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with 
# a value of 5 (since arr[3] equals 5).

# The output will be returned as an object with two properties: pos and peaks. 
# Both of these properties should be arrays. If there is no peak in the given array, 
# then the output should be {pos: [], peaks: []}.

# Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should 
# return {pos: [3, 7], peaks: [6, 3]} (or equivalent in other languages)

# All input arrays will be valid integer arrays (although it could still be empty), 
# so you won't need to validate the input.

# The first and last elements of the array will not be considered as peaks 
# (in the context of a mathematical function, we don't know what is after and
# before and therefore, we don't know if it is a peak or not).

# Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3] 
# does not. In case of a plateau-peak, please only return the position 
# and value of the beginning of the plateau. For example: pickPeaks([1, 2, 2, 2, 1]) 
# returns {pos: [1], peaks: [2]} (or equivalent in other languages)
####
# i: array of numbers, could be empty
# o: hash with pos: an array of (first) position/index of peak
#             peaks: an array of peak values corresponding with the indexes
# p: - find a place in the arry where number before is lower and number after is lower or
# the same = peak
#   - save peak and index in hash
#   -start looking from index 2 and stop looking from index lenght -2
#   - but if the array.lenght < 3 don't bother and return empty arrays (make that the default)
# f: - check length of array and if < 3 return default
#   - loop from index 2 to index len -2
#       - compare value with value of index -1. 
#         if bigger:
#           - compare value with value of index + 1
#           if bigger -> peak , write to hash
#       else: next
#     - output the hash

#### NB: passes test but not on codewars. I think because the output needs to be an object
# with 2 properties. Which I don't know how to do yet...
    
def pick_peaks array
  len = array.length
  output = {"pos"=>[], "peaks"=> []}
  
  return output if len < 3
   
  for i in 2..(len-2)
    if array[i] > array[i-1]  && (array[i] > array[i+1] ||
      (array[i] ==  array[i+1]  &&  array[i] > array[len-1]))
      output["pos"].push(i)
      output["peaks"].push(array[i])
    else
      next
    end
  end
  output
end
      

p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3])== {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) =={"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]} ##
p pick_peaks([]) == {"pos"=>[], "peaks"=>[]}
p pick_peaks([2,1]) == {"pos"=>[], "peaks"=>[]}
p pick_peaks([2,1,-1,1,-1]) == {"pos"=>[3], "peaks"=>[1]}