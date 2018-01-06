#saving and loading with YAML

require 'yaml'

test_array = ["Give Quiche A Chance",
              "Mutants Welcome!",
              'Chameleonic Life-Forms, Great!']
              
test_string = test_array.to_yaml # <== yaml part 1
filename = "RimmerTShirts.txt"

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
read_array = YAML::load read_string # <== yaml part 2

puts (read_string == test_string)
puts (read_array == test_array)
# -> true
#    true
