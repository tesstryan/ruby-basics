# CHALLENGES:
#
# Can you simulate a hand of blackjack?
#
# 1. Randomly choose two cards from a standard deck of 52 cards.
# HINT: Don't worry about the suits.  Just the card value/face matters.
# HINT: Arrays have a #sample method that can (optionally) accept a parameter.
#
# Example Output #1:
# 5 8
#
# Example Output #2:
# Q 6
#
# Example Output #3:
# 2 A


deck_of_cards = ["2","2","2","2",
         "3","3","3","3",
         "4","4","4","4",
         "5","5","5","5",
         "6","6","6","6",
         "7","7","7","7",
         "8","8","8","8",
         "9","9","9","9",
         "10","10","10","10",
         "Jack","Jack","Jack","Jack",
         "Queen","Queen","Queen","Queen",
         "King","King","King","King",
         "Ace","Ace","Ace","Ace"]

value_of_cards = {'Ace' => 11,
                '2' => 2,
                '3' => 3,
                '4' => 4,
                '5' => 5,
                '6' => 6,
                '7' => 7,
                '8' => 8,
                '9' => 9,
                '10' => 10,
                'Jack' => 10,
                'Queen' => 10,
                'King' => 10
                }

card_1 = deck_of_cards.sample
card_2 = deck_of_cards.sample
hand_total = value_of_cards[card_1].to_i + value_of_cards[card_2].to_i

# puts value_of_cards[card_1].to_i
# puts value_of_cards[card_2].to_i

puts "You have a #{card_1} and a #{card_2}."

# 2. Enhance #1 by showing the total score.
# HINT: Consider all aces to have a value of 11.
# Example Output #1:
#
# 5 8
# You have 13.
#
# Example Output #2:
# Q 6
# You have 16.
#
# Example Output #3:
# 2 A
# You have 13.

puts "You have #{hand_total}."

# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.

card_3 = deck_of_cards.sample
card_4 = deck_of_cards.sample
hand_total_hit = value_of_cards[card_1].to_i + value_of_cards[card_2].to_i + value_of_cards[card_3].to_i
hand_total_hit_2 = value_of_cards[card_1].to_i + value_of_cards[card_2].to_i + value_of_cards[card_3].to_i + value_of_cards[card_4].to_i

if hand_total < 17
  puts "You have less than 17, you need to hit."
  puts "Your next card is a #{card_3}. You now have #{hand_total_hit}."
end

if hand_total_hit < 17
  puts "You still have less than 17, you need to hit again."
  puts "Your next card is a #{card_4}. You now have #{hand_total_hit_2}."
end

if hand_total == 21
  puts "Congratulations! You have blackjack!!"
end

if hand_total_hit == 21
  puts "Congratulations! You have blackjack!!"
end

if hand_total_hit_2 == 21
  puts "Congratulations! You have blackjack!!"
end


# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!

if hand_total_hit_2 > 21
   puts "BUSTED!"
 end

 if hand_total_hit > 21
   puts "BUSTED!"
 end

 if hand_total > 21
   puts "BUSTED!"
 end


# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.






