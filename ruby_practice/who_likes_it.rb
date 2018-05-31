# who_likes_it.rb

=begin
You probably know the "like" system from Facebook and other pages. People
can "like" blog posts, pictures or other items. We want to create the text
that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input
array, containing the names of people who like an item. It must return the
display text as shown in the examples

For 4 or more names, the number in and 2 others simply increases.
=end


p likes([])  == "no one likes this"
p likes(["Peter"]) == "Peter likes this"
p likes(["Jacob", "Alex"]) == "Jacob and Alex like this"
p likes(["Max", "John", "Mark"])== "Max, John and Mark like this"
p likes(["Alex", "Jacob", "Mark", "Max"]) == "Alex, Jacob and 2 others like this"
p likes(['Linna Yamazaki', 'Sylvie', 'Galatea', 'Sylia Stingray', 'Nigel', 'Leon McNichol']) == "Linna Yamazaki, Sylvie and 4 others like this"








###########
=begin
i: array with names
o: formated string
   no or one name - no one/ name  + likes this
   2 names - name and name + like this
   3 or more names - name , name and name like this
   4 or more names = name1, name2 and x others like this
f: if empty name = no one
   long case statement
=end


def likes(names)
  names = ['no one'] if names == []
  case names.size
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
  end
end