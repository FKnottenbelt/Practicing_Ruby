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
#######################################
# Shuffle: sort array completely random
original_array = ["noot","Aap","Mies","aap","zoro","moot"]

def shuffle arr_in
  lengte = arr_in.length
  new_array=[]
  lengte.times do
    new_array.push("0")
  end
  
   arr_in.each do |i|
     done = false
     until done
       rand_index = rand(arr_in.length)
       if new_array[rand_index] == "0"
          new_array[rand_index] = i
          done = true
       else 
         done = false
       end
     end 
   end
   
   return new_array
end

print shuffle(original_array)
puts
#####################################################
###############################################
# Sort by seeing which word comes first in the dictionary, and pushing 
# that to the end of a 'sorted_array' while also making a list of unsorted words.
# And don't use .sort except as 'right answer' check
# But now with recursion. And comparing lowercase, but showing original case

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
    |word| if word.downcase < smallest.downcase
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
##############################################
# And again, this time using quicksort 
original_array = ["noot","Aap","Mies","aap","zoro","moot"]

def sort arr
  return arr if arr.length <= 1 # base case

  middle = arr.pop  # degene met welke je vergelijkt 
  less = arr.select{ |x| x.downcase < middle.downcase} # kleiner dan 'vergelijk item'
  more = arr.select{ |x| x.downcase >= middle.downcase} #groter dan 'vergelijk item'
  sort(less) + [middle] + sort(more) #verdeel en heers! middle komt terug, less
                                     # en more gaan dieper.
end

print sort (original_array)
puts