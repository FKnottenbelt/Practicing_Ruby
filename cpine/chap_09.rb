#Happy birthday

puts 'what year where you born?'
year = gets.chomp
puts 'what month where you born?'
month = gets.chomp
puts 'what day where you born?'
day = gets.chomp

born= Time.mktime(year, month, day)

today = Time.new
years_old = (today - born) / 60 / 60 / 24 / 365
puts "You are #{years_old} years old"
(years_old.floor).times {puts "Yeah!"}

##################################################################
# Orange Tree
class OrangeTree
 
  def initialize
    @alive = true
    @age = 0
    @height = 1
    @fruit = 0
    @oranges = 0
  end
  
  def height
    puts "The tree is #{@height} cm tall"
    oneYearPasses
  end
  
  def countTheOranges
    @oranges = @fruit * 10
    puts "The tree has #{@oranges} oranges"
    oneYearPasses
  end
  
  def pickAnOrange
    @oranges = @oranges-1
    if @oranges > 0
      puts "Here is you orange, it\'s delicious"
    else
      puts "There are no more oranges this year."
      oneYearPasses
    end
  end
  
  private
  
  def oneYearPasses
    @age = @age + 1
    @height = @height + 10
    if @age > 50 
      @alive = false
      puts "Tree dies of old age"
      exit
    end
    if @age > 3
      @fruit = @fruit + 1
    end
    @oranges = 0
  end
  
end

tree = OrangeTree.new
tree.height
tree.pickAnOrange
tree.countTheOranges
tree.pickAnOrange
tree.pickAnOrange
tree.height
tree.countTheOranges

#####################################
#Playing with your Baby dragon

require './babyDragon'

puts "Hello, what do you want to name your Dragon?"
name = gets.chomp

pet = Dragon.new name

loop do
  puts "what do you want to do with your dragon?"
  puts "-- feed --"
  puts "-- toss --"
  puts "-- walk --"
  puts "-- put to bed --"
  puts "-- rock --"
  action = gets.chomp.downcase

  case action
    when "feed"
      pet.feed
    when "toss"
      pet.toss
    when "walk"
      pet.walk
    when "put to bed"
      pet.putToBed
    when "rock"
      pet.rock
    else
      puts "dragon flies away"
      exit
  end   
end