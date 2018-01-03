###############################################
# Continents

o = 'water'
M = 'land'

world = [[o,o,o,o,o,o,o,o,o,o,o], 
         [o,o,o,o,M,M,o,o,o,o,o], 
         [o,o,o,o,o,o,o,o,M,M,o], 
         [o,o,o,M,o,o,o,o,o,M,o], 
         [o,o,o,M,o,M,M,o,o,o,o], 
         [o,o,o,o,M,M,M,M,o,o,o], 
         [o,o,o,M,M,M,M,M,M,M,M], 
         [o,o,o,M,M,o,M,M,M,o,o], 
         [o,o,M,o,o,o,M,M,o,o,o], 
         [o,M,o,o,o,M,o,o,o,o,o], 
         [o,o,o,o,M,o,o,o,o,o,o]]

def continent_size world, x, y   
  # addition for inclduing locations
  # At the edge of the world without having the program crash 
  if x > 10 || x < 0 || y > 10 || y < 0 
    return 1
  end 
  # Either it's water or we already
  # counted it, but either way, we don't
  # want to count it now.  
  if world[x][y] != 'land'
    return 0
  end
  
  # So first we count this tile...
  world[x][y] = 'counted land'
  size = 1
  
  # ...then we count all of the
  # neighboring eight tiles (and,
  # of course, their neighbors by
  # way of the recursion).
  size = size + continent_size(world, x-1, y-1) 
  size = size + continent_size(world, x ,  y-1) 
  size = size + continent_size(world, x+1, y-1) 
  size = size + continent_size(world, x-1, y  ) 
  size = size + continent_size(world, x+1, y  ) 
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x ,  y+1) 
  size = size + continent_size(world, x+1, y+1)

  size
end

puts continent_size(world, 5, 5)