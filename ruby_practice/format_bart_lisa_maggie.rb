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


p list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ]) == 'Bart, Lisa & Maggie'
p list([ {name: 'Bart'}, {name: 'Lisa'} ]) == 'Bart & Lisa'
p list([ {name: 'Bart'} ]) == 'Bart'
p list([]) == ''



###############################3
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

# alternative
def list(arr)
  return '' if arr.empty?
  names = []
  arr.each { |hash| names << hash[:name] }
  last = names.pop
  string = names.join(', ')
  names == []? string + last : string + " & " + last
end

# top solutions
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?
  "#{names.join(', ')} & #{last_name}"
end