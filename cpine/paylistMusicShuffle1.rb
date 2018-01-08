#####
# playist with music_shuffle


def music_shuffle filenames
  # card-like shuffle: Shuffle the deck twice, then cut it once.

  # sort first so it's not too random
  filenames = filenames.sort
  len = filenames.length

  # shuffle twice
  2.times do 
    l_idx = 0     # index of next card in left pile
    r_idx = len/2 # index of next card in right pile
    shuf = []
    # note: if odd number of cards, right pile will be bigger

    while shuf.length < len
      if shuf.length%2 == 0
        # take card from right pile
        shuf.push(filenames[r_idx])
        r_idx += 1
      else
        # take card from left pile
        shuf.push(filenames[l_idx])
        l_idx += 1
      end
    end

    filenames = shuf # resuffled deck
   end    

  # now cut the deck 
  arr = []
  cut = rand(len) # index of card to cut at
  idx = 0

  while idx < len
    arr.push(filenames[(idx+cut)%len])
    idx += 1
  end
  
  arr # return resuffled deck and cut deck

end  
  
# find files
Dir.chdir 'C:\Users\FK\Music\vanRoel'
found_files = Dir['**/*.mp3']
target_dir = 'C:\Users\FK\Documents\Sourcetree\my_first_repository\cpine\\'

# shuffle the files
found_files = music_shuffle (found_files)

file_name = target_dir + "GuitarVanRoel2.m3u"

# write them ot a .m3u (playlist) file
File.open file_name, 'w' do |f|

  found_files.each do |name|
    line = Dir.pwd + "\\" + name
    f.write line + "\n"   
  end
end
