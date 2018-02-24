# take_a_10_minute_walk.rb 6 kyu

# You live in the city of Cartesia where all roads are laid out in a perfect
# grid. You arrived ten minutes too early to an appointment, so you decided to
# take the opportunity to go for a short walk. The city provides its citizens
# with a Walk Generating App on their phones -- everytime you press the button
# it sends you an array of one-letter strings representing directions to walk
# (eg. ['n', 's', 'w', 'e']). You know it takes you one minute to traverse on
# e city block, so create a function that will return true if the walk the app
# gives you will take you exactly ten minutes (you don't want to be early or
# late!) and will, of course, return you to your starting point. Return false
# otherwise.

#     Note: you will always receive a valid array containing a random assortment
#     of direction letters ('n', 's', 'e', or 'w' only). It will never give you
#     an empty array (that's not a walk, that's standing still!).


def isValidWalk(walk)
  return false if walk.size != 10
  return false if walk.count("n") != walk.count("s")
  return false if walk.count("e") != walk.count("w")
  true
end

# testcases
# failwalk =
#   [
#     ['n'],
#     ['n','s'],
#     ['n','s','n','s','n','s','n','s','n','s','n','s'],
#     ['n','s','e','w','n','s','e','w','n','s','e','w','n','s','e','w'],
#     ['n','s','n','s','n','s','n','s','n','n'],
#     ['e','e','e','w','n','s','n','s','e','w']
#   ]
# pass =
#   [
#     ['n','s','n','s','n','s','n','s','n','s'],
#     ['e','w','e','w','n','s','n','s','e','w'],
#     ['n','s','e','w','n','s','e','w','n','s'],
#     ['s','e','w','n','n','s','e','w','n','s']
#   ]


# top solutions
def isValidWalk(walk)
  walk.count('w') == walk.count('e') and
  walk.count('n') == walk.count('s') and
  walk.count == 10
end

def isValidWalk(walk)
  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.count == 10
end
