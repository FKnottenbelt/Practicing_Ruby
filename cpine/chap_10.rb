# Grandfather clock
require './dutchTime'

def chime(&a_block)
  hours_passes_today = dutchTime.hour
  hours_passes_today.times {a_block.call} #notice we leave the & off!
end

chime{puts 'DONG!'}

#############################
# Logger /better logger
$spaces = ""

def mylog omschrijving, &blok
  puts $spaces + "Def: starting blok #{omschrijving}"
  $spaces = $spaces + " "
  blok.call
  $spaces = $spaces.chop
  $spaces = $spaces.chop
  puts $spaces + "Def: ending blok #{omschrijving}"

end

mylog "Outerblock" do
  puts $spaces + "Outer blok 1 says: Hello Hello"
  $spaces = $spaces + " "
  #start inner block:
  mylog "Innerblock" do
    
    puts $spaces + "Inner block 2 says: bye bye"
  end  
end