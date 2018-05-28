# simple_card_game.rb 6 kyu

=begin
Steve and Josh are bored and want to play something. They don't want to
think too much, so they come up with a really simple game. Write a function
called winner and figure out who is going to win.

They are dealt the same number of cards. They both flip the card on the
top of their deck. Whoever has a card with higher value wins the round
and gets one point (if the cards are of the same value, neither of them
gets a point). After this, the two cards are discarded and they flip another
card from the top of their deck. They do this until they have no cards left.

deckSteve and deckJosh are arrays representing their decks. They are filled
with cards, represented by a single character. The card rank is as follows
(from lowest to highest):

'2','3','4','5','6','7','8','9','T','J','Q','K','A'

Every card may appear in the deck more than once. Figure out who is going
to win and return who wins and with what score:

"Steve wins x to y"

if Steve wins, where x is Steve's score, y is Josh's score;

"Josh wins x to y"

if Josh wins, where x is Josh's score, y is Steve's score;

"Tie"

if the score is tied at the end of the game.


Example:

Steve is dealt:

['A','7','8']

Josh is dealt:

['K','5','9']

    In first round, ace beats king and Steve gets one point.
    In second round, 7 beats 5 and Steve gets his second point.
    In third round, 9 beats 8 and Josh gets one point.


You should return:

"Steve wins 2 to 1"
=end


p winner(["A", "7", "8"], ["K", "5", "9"]) == "Steve wins 2 to 1"
p winner(["T"], ["T"]) == "Tie"
p winner(["K", "5"], ["A", "7"]) == "Josh wins 2 to 0"









puts '######## solution ###########'
=begin
i: two decks : '2','3','4','5','6','7','8','9','T','J','Q','K','A'
o: "Steve wins x to y"
   "Josh wins x to y"
   "Tie"
r: highest gets point. tie = no point
f: make substitution hash
   make score hash
   zip decks into rounds
   loop through rounds
   make substitution if needed
   compare cards
   give points

   compare scores, make output
=end

def substitute(card)
    substitution = { 'T' => '10', 'J' => '11', 'Q' => '12',
                   'K'=> '13' ,'A' => '14' }
    if ['T','J','Q','K','A'].include?(card)
      card = substitution[card]
    else
      card
    end
end

def winner(deckSteve, deckJosh)
  score = { Steve: 0, Josh: 0 }
  rounds = deckSteve.zip(deckJosh)
  rounds.map! do |steve, josh|
    [substitute(steve),substitute(josh)]
  end

  score[:Steve] = rounds.count{ |rnd| rnd.first > rnd.last }
  score[:Josh] = rounds.count{ |rnd| rnd.last > rnd.first }

  if score[:Steve] > score[:Josh]
    return "Steve wins #{score[:Steve]} to #{score[:Josh]}"
  elsif score[:Josh] > score[:Steve]
    return "Josh wins #{score[:Josh]} to #{score[:Steve]}"
  else
    return 'Tie'
  end
end

# top solution
def winner(deckSteve, deckJosh)
   steve, josh = 0, 0
   cards = ['2','3','4','5','6','7','8','9','T','J','Q','K','A']
   scoreSteve = deckSteve.map {|x| cards.index(x)}
   scoreJosh = deckJosh.map {|x| cards.index(x)}
   scoreSteve.zip(scoreJosh).each do |s, j|
     next if s == j
     s > j ? steve +=1 : josh +=1
   end

   steve > josh ?
     "Steve wins #{steve} to #{josh}" :
     josh > steve ?
       "Josh wins #{josh} to #{steve}" :
    "Tie"
end
