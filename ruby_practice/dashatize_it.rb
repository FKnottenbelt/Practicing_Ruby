# dashatize_it.rb

=begin
Given a number, return a string with dash'-'marks before and after each
odd integer, but do not begin or end the string with a dash mark.

Ex:
dashatize(274) -> '2-7-4'
dashatize(6815) -> '68-1-5'
=end


p dashatize(274) == "2-7-4"
p dashatize(5311) =="5-3-1-1"
p dashatize(86320) =="86-3-20"
p dashatize(974302) =="9-7-4-3-02"
p dashatize(nil) =="nil"
p dashatize(0) == "0"
p dashatize(-1) =="1"
p dashatize(-28369) == "28-3-6-9"









###################3
=begin
i: number
o: string dash before and after odd integer
f: make string. loop trough chars
   if to i is odd integer
     add dash before and after
   back to string
   sqeeze dashes
   delete begin and end dashes
=end

def dashatize(num)
  return 'nil' if num == nil
  str = num.to_s.each_char.map do |char|
    char.to_i.odd? ? char = "-#{char}-" : char
  end

  str = str.join.squeeze('-')
  str.slice!(0,1) if str[0] == '-'
  str.slice!(-1,1) if str[-1] == '-'
  str
end


# top solution
def dashatize(num)
  num.nil? ? 'nil' : num.to_s.gsub(/([13579])/, "-\\1-").gsub('--', '-').gsub(/(^-)|(-$)/, '')
end
