# Picture downloader with overwrite protection

#go to the picture directory
Dir.chdir './pics'

#find all the files to move
pic_names = Dir['**/*.jpg']

# new dir
new_dir = '/home/ec2-user/git_basics/cpine/pics_save/'

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts "lets see where we are: #{Dir.pwd}"
puts
puts "Downloading #{pic_names.length} files: "

pic_number = 1
pic_names.each do |name|
  print '.'  # this is our progress bar
  new_name = if pic_number < 10
    "#{new_dir}#{batch_name}0#{pic_number}.jpg"
  else
    "#{new_dir}#{batch_name}#{pic_number}.jpg"
  end
  
  if Dir[new_name].empty?  #could have used File.exist?(new_name) == false
    File.rename name, new_name
  else
    puts "#{name} could not be moved, #{new_name} allready exists"
  end  
  pic_number += 1
end

puts #so we are off the progress bar line
puts 'Done!'
#########################################
#playlist

# find files
Dir.chdir 'C:\Users\FK\Music\vanRoel'
found_files = Dir['**/*.mp3']
target_dir = 'C:\Users\FK\Documents\Sourcetree\my_first_repository\cpine\\'

file_name = target_dir + "GuitarVanRoel.m3u"
#puts 'het wordt ' + file_name

File.open file_name, 'w' do |f|

  found_files.each do |name|
    line = Dir.pwd + "\\" + name
    f.write line + "\n"   
  end
end