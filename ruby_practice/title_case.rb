#A string is considered to be in title case if each word in the string is either 
#(a) capitalised (that is, only the first letter of the word is in upper case) or 
#(b) considered to be an exception and put entirely into lower case unless it is the 
#first word, which is always capitalised.

#Write a function that will convert a string into title case, given an optional list of 
#exceptions (minor words). The list of minor words will be given as a string with each word 
#separated by a space. Your function should ignore the case of the minor words string -- it
#should behave in the same way even if the case of the minor word string is changed.

#======Arguments (Haskell)

#    First argument: space-delimited list of minor words that must always be lowercase 
#    except for the first word in the string.
#    Second argument: the original string to be converted.

#======Arguments (Other languages)

#    First argument (required): the original string to be converted.
#    Second argument (optional): space-delimited list of minor words that must always 
#    be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests 
#    will pass undefined when this argument is unused.

#======Example

#title_case('a clash of KINGS', 'a an the of') #should return: 'A Clash of Kings'
#title_case('THE WIND IN THE WILLOWS', 'The In') #should return: 'The Wind in the Willows'
#title_case('the quick brown fox') #should return: 'The Quick Brown Fox'

#========================================
#input: 2 strings: first one is to be converted. 2nd one are minor words separated by " ".
#  the second string is optional.
#output: converted first string as string.

#rules:
#- convert string1 to title case, except if the word is in the exception list (2nd string)
#  - if 1st word: capitalize
#  - if exception and not 1st word: lower case.
#- 2nd string case should be ignored.

#datastructure:
#- 1st string needs to be words, so array of words. all lowercase
#- 2nd string also words , array (not using regex?). all lowercase

#algorithm:
#- convert 1st string to downcase and split into an array of words (sentence)
#- check second string:
#  - give it a default value of "" in the method invocation
#  - convert second string to downcase and split into an array of words (minor_words)
#- map each of the words in the first string (the sentence)
#    if it's the first word, that is, has an index of 0
#      - capitalize the word.
#    else
#      - see if the word is included in the minor_words array
#        if it is (is true)
#          - don't change anything
#        else
#          - capitalize the word.
#- join the output array with spaces to a string and return it

def title_case title, minors=""
  sentence = title.downcase.split()
  minor_words = minors.downcase.split()
  
  sentence.map.with_index do |word,i|
    minor_words.include?(word) && i!= 0 ? word : word.capitalize
  end.join(' ')
end

#tests:
p title_case('a clash of KINGS', 'a an the of') =='A Clash of Kings'
p title_case('the WIND IN the WILLOWS', 'The In') =='The Wind in the Willows'
p title_case('THE WIND IN THE WILLOWS', 'The In') =='The Wind in the Willows'
p title_case('the quick brown fox') =='The Quick Brown Fox' 
p title_case('', 'in the') ==''
p title_case('') ==''
p title_case(' ', 'in the') == ""
p title_case('a clash   of KINGS', 'a an the of') =='A Clash of Kings'
p title_case('a clash of KINGS', 'a an     the of') =='A Clash of Kings'
p title_case('a clash. of KINGS', 'a an the of') =='A Clash. of Kings'

#### top solution:
def title_case(title, minor_words = '')
  title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')
end