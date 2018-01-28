#The following array contains three names and numbers. 
# Group each name with the number following it by placing 
# the pair in their own array. Then create a nested array 
# containing all three groups. 

# arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
# NB: arr might grow over time. Your solutions should take this into account

# expected output:
# [['Dave', 7],['Miranda', 3],['Jason', 11]]

#=== my solution ===

arr =['Dave', 7, 'Miranda', 3, 'Jason', 11]

new_arr=[]
new_sub_arr = []

arr.each_with_index do |e, i|

  if i.even?
    # start new sub arr
    new_arr.push(new_sub_arr) if new_sub_arr.size > 0
    new_sub_arr = []
    p new_sub_arr.push(e)
  else
    # just add to sub arr
    p new_sub_arr.push(e)
  end
  
  new_arr.push(new_sub_arr) if i == (arr.size - 1)
end

p new_arr