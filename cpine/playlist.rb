#playist

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
