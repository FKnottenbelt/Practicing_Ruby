# Description:
# First find the max number, then find if any three numbers can be multiplied
# together to equal the max number.
# Select one number with index
# Then rotate through other numbers, skipping first number
# Then rotate first number


# student 1
def mult_of_three_nums(arr)
  max_num = arr.max

  arr.each_with_index do |num, idx|
    arr.each_with_index do |num2, idx2|
      next if idx2 == idx
      arr.each_with_index do |num3, idx3|
        next if idx3 == idx2 || idx3 == idx
        return true if (num * num2 * num3) == max_num
      end
    end
  end
  false
end


### student 2

  def mult_of_three_nums(array)
    max_number = array.max
    combinantions = array.permutation(3).to_a
    !!combinantions.find {|ary| ary.reduce(:*) == max_number}
  end

### TA
def mult_of_three_nums(arr)
  arr.combination(3).to_a.each do |subarr|
    return true if subarr.reduce(:*) == arr.max
  end
  false
end

####### student 3
=begin

1. We need to find the maximum => array.max
2. Then we need to see if three consecutive numbers can be multiplied together to obtain the maximum value => [1*2*3],[2*3*4],[3*4*5],[4*5*6],[5*6*1],[6*1*2]
3*8*0, 8*0*9, 0*9*4, 9*4*2, 4*2*7, 2*7*3, 7*3*8
3.How to take the three elements => array[0..2]
4.When finish == array.length - 2
finish = array[0]
5. When finish == array.length - 1
finish = [0..1]

if start ==(array.size) - 2
array= [[(array.size) - 1],[array.last],[0]].flatten
end
if start == (array.size) - 1
array= [[array.last],[0],[1]].flatten
end

=end