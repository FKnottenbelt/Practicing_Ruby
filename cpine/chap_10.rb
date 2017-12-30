# Grandfather clock
require './dutchTime'

def chime(&a_block)
  hours_passes_today = dutchTime.hour
  hours_passes_today.times {a_block.call} #notice we leave the & off!
end

chime{puts 'DONG!'}