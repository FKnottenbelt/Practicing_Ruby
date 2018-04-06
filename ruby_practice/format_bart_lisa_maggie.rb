# format_bart_lisa_maggie.rb 6 kyu

# Given: an array containing hashes of names

# Return: a string formatted as a list of names separated by
# commas except for the last two names, which should be separated
# by an ampersand.

# Example:

# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''

# Note: all the hashes are pre-validated and will only
# contain A-Z, a-z, '-' and '.'.

def list names
  output = ""
  names.each_with_index do |hash, i|
    if i == 0
      output << "#{hash[:name]}"
    elsif names[i] == names.last
      output << " & #{hash[:name]}"
    else
      output << ", #{hash[:name]}"
    end
  end
  output
end

# top solutions
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end