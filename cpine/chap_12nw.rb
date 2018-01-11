###########
# Birthday helper

filename = "birthdays.txt"

records = Hash.new

# put file records in hash (converting date as we go)
File.read(filename).each_line do |line|

  person = line.split(", ")
  year = person[2].to_i
  month_day = person[1].split(" ")
  month = month_day[0]
  day = month_day[1]
  birthday = "#{day} #{month} #{year}"

  records[person[0]]= birthday

end 

puts "Give me a name: "
name = gets.chomp

names_birthday = records[name]
if names_birthday == nil
  puts "I have no recors for #{name}"
else  
  puts "#{name}'s birthday is #{names_birthday}"
end
