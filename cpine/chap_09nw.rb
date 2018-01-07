# Old school Roman numbers

go_on = false
until go_on
  puts "give me a nummber between 1 and 4000"
  num = Integer(gets.chomp)

  if num == 0 || num > 3999
    puts "Now, that number is nog between 1 and 4000, now is it?"
    puts "Lets try again"
    go_on = false
  else
    go_on = true
  end
end


def slice num
  roman_nums = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    5 => "V",
    1 => "I"
  }
  roman_nums.each do |k,v|
    if num / k !=0
      letter = v
      base = num / k
      rest = num % k
      return [letter, base, rest] #okay, found it
    end
  end
end

old_roman_num =""
rest = 0

loop do #repeat till we can divide no more. I think this should be recursion?
  array = slice num
  letter = array[0]
  base = array[1]
  rest = array[2]
  old_roman_num = old_roman_num.to_s + (letter * base).to_s
  num = rest
  break if num < 5
end

if rest != 0 
  ones = "I" * rest
  old_roman_num = old_roman_num + ones
end 

puts "old_roman_num is #{old_roman_num}"

###############################################
# Modern Roman numerals (with a 'ask recursively')

def get_intput
  puts "give me a nummber between 1 and 4000"
  num = Integer(gets.chomp)
  if num == 0 || num > 3999
    puts "Now, that number is nog between 1 and 4000, now is it?"
    puts "Lets try again"
    get_intput
  else
    return num
  end
end


def slice num
  roman_nums = {
    1000 => "M",
    500 => "D",
    100 => "C",
    50 => "L",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  roman_nums.each do |k,v|
    if num / k !=0
      letter = v
      base = num / k
      rest = num % k
      return [letter, base, rest] #okay, found it
    end
  end
end

old_roman_num =""
rest = 0
num = get_intput

loop do #repeat till we can divide no more. I think this should be recursion?
  array = slice num
  letter = array[0]
  base = array[1]
  rest = array[2]
  old_roman_num = old_roman_num.to_s + (letter * base).to_s
  num = rest
  break if num < 5
end

if rest != 0 
  ones = "I" * rest
  old_roman_num = old_roman_num + ones
end 

puts "old_roman_num is #{old_roman_num}"