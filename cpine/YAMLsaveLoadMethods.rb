# Handy YAML save and load methods
require 'yaml'

def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  
  YAML::load yaml_string
end

# and now we use our handy methods
test_array = ["Slick Shoes",
              "Bully Blinders",
              "Pinchers of Peril"]
filename = "DatasGadgets.txt"

#we save it
yaml_save test_array, filename

#we load it
read_array = yaml_load filename

#we test it
puts(read_array == test_array)

