###############################################
# Sort by seeing which word comes first in the dictionary, and pushing 
# that to the end of a 'sorted_array' while also making a list of unsorted words.
# And don't use .sort except as 'right answer' check

original_array = ["noot","Aap","Mies","aap","noot"]
work_array = [].replace(original_array) #to make a real independent copy
array_with_sort = original_array.sort

sorted_array=[]

def find_smallest work_array
  smallest="zzzzz"
  work_array.each do
    |word| if word < smallest
             smallest = word
           end
  end
  return smallest
end

until work_array.empty?
  found = find_smallest(work_array)
  sorted_array.push(found)
  work_array.delete_at(work_array.index(found)) 
end

puts "original_array #{original_array}"
print "sorted array: #{sorted_array}"
puts
puts "with sort: #{array_with_sort}"

###############################################
# Sort by seeing which word comes first in the dictionary, and pushing 
# that to the end of a 'sorted_array' while also making a list of unsorted words.
# And don't use .sort except as 'right answer' check
# But now with recursion

original_array = ["noot","Aap","Mies","aap","noot"]
work_array = [].replace(original_array) #to make a real independent copy
array_with_sort = original_array.sort

sorted_array=[]

def find_smallest work_array, sorted_array
  #base case
  if work_array.empty?
    return sorted_array #done, nothing more to sort
  end
  
  #do the work
  smallest="zzzzz"
  work_array.each do
    |word| if word < smallest
             smallest = word
           end
  end
  sorted_array.push(smallest)
  work_array.delete_at(work_array.index(smallest)) #work towards base
  find_smallest(work_array, sorted_array) #recursion
end

find_smallest(work_array, sorted_array)

puts "original_array #{original_array}"
print "'hand' sorted array: #{sorted_array}"
puts
puts "with sort: #{array_with_sort}"