# working through 'well-known quicksort algorithm'
original_array = ["noot","Aap","Mies","aap","zoro","moot"]

def sort arr
  return arr if arr.length <= 1 # base case
  puts "arr start #{arr}"
  
  middle = arr.pop  # degene met welke je vergelijkt 
  puts "arr after pop: #{arr}"
  puts "middle #{middle}"
  
  less = arr.select{ |x| x < middle} # kleiner dan 'vergelijk item'
  puts "less: #{less} zijn kleiner dan #{middle}"
  
  more = arr.select{ |x| x >= middle} #groter dan 'vergelijk item'
  puts "more: #{more} zijn groter dan #{middle}"
  
  puts "gaan we nog een keer met: #{less} zonder #{[middle]} en ook met #{more}}"
  puts "------------------------"
  sort(less) + [middle] + sort(more) #verdeel en heers! middle komt terug, less
                                     # en more gaan dieper.
end

print sort (original_array)
puts
