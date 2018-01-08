#####
# playist with shuffle


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

# find files
Dir.chdir 'C:\Users\FK\Music\vanRoel'
found_files = Dir['**/*.mp3']
target_dir = 'C:\Users\FK\Documents\Sourcetree\my_first_repository\cpine\\'

# shuffle the files
found_files = shuffle (found_files)

file_name = target_dir + "GuitarVanRoel.m3u"

# write them ot a .m3u (playlist) file
File.open file_name, 'w' do |f|

  found_files.each do |name|
    line = Dir.pwd + "\\" + name
    f.write line + "\n"   
  end
end
