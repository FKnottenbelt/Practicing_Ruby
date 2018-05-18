# same question as session 6 april
=begin
Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a
substring that appears in both strings, or false if you do not.
 We only care about substrings that are longer than one letter long.
=end
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true

###
# student 1:

def substring_test(str1, str2)
  str1.chars.each_index do |i|
    (i + 1).upto(str1.length) do |n|
      return true if str2.downcase.include?(str1[i..n].downcase) && str1[i..n].length > 1
    end
  end
  false
end

###
# student 2:
def substring_test(string1, string2)
  array1 = []
  array2 = []
  start_counter = 0
  range_size = 2

  loop do
    loop do
      array1 << string1.downcase.slice(start_counter, range_size)
      start_counter += 1
      break if start_counter >= string1.length - 1
    end
    start_counter = 0
    range_size += 1
    break if range_size >= string1.length
  end


  start_counter = 0
  range_size = 2
  loop do
    loop do
      array2 << string2.downcase.slice(start_counter, range_size)
      start_counter += 1
      break if start_counter >= string2.length - 1
    end
    start_counter = 0
    range_size += 1
    break if range_size >= string2.length
  end

  array1.uniq!
  array2.uniq!

  answer1 = array1.map do |element|
    if array2.include?(element)
      true
    end
  end

  answer2 = array2.map do |element|
    if array1.include?(element)
      true
    end
  end

  if string1.empty? || string2.empty?
    return false
  else
    answer1.include?(true) || answer2.include?(true)
  end

end

# LS

def substring(str)
  result = []
  0.upto(str.size - 2) do |start_idx|
    1.upto(str.size - 1) do |end_idx|
      result << str[start_idx..end_idx] if end_idx > start_idx
    end
  end
  result
end

def substring_test(str1, str2)
  str1_substrings = substring(str1)
  str1_substrings.each do |substring|
    return true if str2.downcase.include?(substring.downcase)
  end
  false
end

##
# LS

def substring(str)
  result = []
  0.upto(str.size - 2) do |start_idx|
    1.upto(str.size - 1) do |end_idx|
      result << str[start_idx..end_idx] if end_idx > start_idx
    end
  end
  result
end

def substring_test(str1, str2)
  str1_substrings = substring(str1)
  str1_substrings.each do |substring|
    return true if str2.downcase.include?(substring.downcase)
  end
  false
end
