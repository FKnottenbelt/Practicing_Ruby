# tests_results.rb 7 kyu
=begin
It's important day today: the class has just had a math test. You will be given
a list of marks. Complete the function that will:

    Calculate the average mark of the whole class and round it to 3 decimal places.
    Make a dictionary/hash with keys "h", "a", "l" to make clear how many high,
    average and low marks they got. High marks are 9 & 10, average marks are 7
    & 8, and low marks are 1 to 6.
    Return list [class_average, dictionary] if there are different type of marks,
    or [class_average, dictionary, "They did well"] if there are only high marks.

=
i: array with marks
o: array: avg.round(3), h/a/l, optional string
r: h = 9, 10 ; a = 7, 8 ; l = 1 to 6
   - string if all h
f: - define dictionary
   - compute avg (to float)
   - count h, a and l and write to dict. and dict to arr
   - if a and l = 0, add string
=end

def results(marks)
  dict = {'h' => 0, 'a'=> 0, 'l'=> 0}

  list = [(marks.sum.to_f / marks.count).round(3)]
  dict['h'] = marks.select { |m| m == 9 || m == 10 }.count
  dict['a'] = marks.select { |m| m == 7 || m == 8 }.count
  dict['l'] = marks.select { |m| m.between?(1,6) }.count
  list << dict
  dict['a'] == 0 && dict['l'] == 0 ? list << "They did well" : list
end

p results([10, 9, 9, 10, 9, 10, 9]) == [9.429, {'h'=> 7, 'a'=> 0, 'l'=> 0}, 'They did well']

p results([5, 6, 4, 8, 9, 8, 9, 10, 10, 10]) == [7.9, {'h'=> 5, 'a'=> 2, 'l'=> 3}]

