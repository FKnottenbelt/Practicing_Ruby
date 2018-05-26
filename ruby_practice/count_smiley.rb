# count_smiley.rb 6 kyu

=begin
Given an array (arr) as an argument complete the function countSmileys
that should return the total number of smiling faces.

Rules for a smiling face:
-Each smiley face must contain a valid pair of eyes. Eyes can be marked as :
or ;
-A smiley face can have a nose but it does not have to. Valid characters for
a nose are - or ~
-Every smiling face must have a smiling mouth that should be marked with
either ) or D.
No additional characters are allowed except for those mentioned.
Valid smiley face examples:
:) :D ;-D :~)
Invalid smiley faces:
;( :> :} :]

Note: In case of an empty array return 0. You will not be tested with
invalid input (input will always be an array). Order of the face
(eyes, nose, mouth) elements will always be the sam
=end
p countSmileys([':)', ';(', ';}', ':-D']) == 2
p countSmileys([';D', ':-(', ':-)', ';~)']) == 3
p countSmileys([';]', ':[', ';*', ':$', ';-D']) == 1






puts '######## solution ###########'
=begin
i: array with 'faces'-strings
o: number of smiling faces
r: face has : or ;
   face may have - or ~
   face has ) or D
   nothing else!
f: loop throug faces
    if 2 long: index 0 in valid eyes
               index 1 in valid mouth
    if 3 long: index 0 in valid eyes
               index 1 in valid nose
               index 2 in valid mouth
    if valid face up counter
    output counter
=end

def countSmileys(faces)
  valid_eyes = [':', ';']
  valid_nose = ['-', '~']
  valid_mouth = [')', 'D']

  counter = 0
  faces.each do |face|
    case face.size
    when 2
      if valid_eyes.include?(face[0]) &&
         valid_mouth.include?(face[1])
           counter += 1
      end
    when 3
      if valid_eyes.include?(face[0]) &&
         valid_nose.include?(face[1]) &&
         valid_mouth.include?(face[2])
           counter += 1
      end
    end
  end
  counter
end

p countSmileys([':)', ';(', ';}', ':-D']) == 2
p countSmileys([';D', ':-(', ':-)', ';~)']) == 3
p countSmileys([';]', ':[', ';*', ':$', ';-D']) == 1


# top solutions
def count_smileys(arr)
  arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
end

