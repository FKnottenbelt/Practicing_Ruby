module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(str1, str2)
    if str1.size != str2.size
      raise ArgumentError, "Input strings have unequal size"
    end
    counter = 0
    count = 0

    loop do
      break if counter == str1.size
      if str1[counter] != str2[counter]
        count += 1
      end
      counter += 1
    end
    count
  end
end