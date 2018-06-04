# rot13.rb 5 kyu
=begin
ROT13 is a simple letter substitution cipher that replaces a letter with
the letter 13 letters after it in the alphabet. ROT13 is an example of the
Caesar cipher.

Create a function that takes a string and returns the string ciphered with
Rot13. If there are numbers or special characters included in the string,
they should be returned as they are. Only letters from the latin/english
alphabet should be shifted, like in the original Rot13 "implementation".

Please note that using "encode" in Python is considered cheating.

=end

p rot13("test") == "grfg"
p rot13("Test") == "Grfg"
p rot13("Te2st") == "Gr2fg"
p rot13("") == ""










#############333
=begin
i: string
o: shifted string
r: only letters shift, rest stays as it is
   upper needs to loop after Z
   downcase needs to loop after z
f: loop through chars
   if letter
     - make into ord
     - add 13
     - see if you need to loop back (but separate for upper en lowercase)
       if > 122, back to 65
         if ord_char < 122
           to loop = ord_char - 122
           64 + to loop => char
     - make into chr
   else
     leave as it is
   put back into string
=end


def transform_downcase(char)
  char > 122 ? (char =  96 + (char - 122)) : char
end

def transform_upcase(char)
  char > 90 ? (char =  64 + (char - 90)) : char
end

def rot13(string)
  string.split('').map do |char|
    if ("A"..'Z').include?(char)
     char = (char.ord + 13)
     char = transform_upcase(char)
     char.chr
    elsif ("a"..'z').include?(char)
     char = (char.ord + 13)
     char = transform_downcase(char)
     char.chr
    else
      char
    end
  end.join
end



# top solution
def rot13(string)
  string.tr("A-Za-z", "N-ZA-Mn-za-m")
end