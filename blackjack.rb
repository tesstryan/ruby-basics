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
                'J' => 10,
                'Q' => 10,
                'K' => 10
                }

card_1 = deck_of_cards.sample
card_2 = deck_of_cards.sample

puts "You have a #{card_1} and a #{card_2}."

hand_value = value_of_cards.values_at(card_1, card_2).inject(:+)

puts "You have a value of #{hand_value}."

if hand_value > 21
  puts "Dealer wins, better luck next time."
end

if hand_value == 21
  puts "BLACKJACK! You have won."
end

if hand_value < 21
  puts "Would you like to hit or stay?"
  answer = gets.chomp.downcase
    if answer.include?("hit") == true
      card_3 = deck_of_cards.sample
      puts "You now have #{card_1}, #{card_2} and a #{card_3}."
      hand_value = value_of_cards.values_at(card_1, card_2, card_3).inject(:+)
      puts "You have a value of #{hand_value}."
        if hand_value > 21
          puts "Dealer wins, better luck next time."
        end

        if hand_value == 21
          puts "BLACKJACK! Congrats you have beat the dealer."
        end

        if hand_value < 21
          puts "Would you like to hit or stay?"
          answer = gets.chomp.downcase
            if answer.include?("hit") == true
              card_3 = deck_of_cards.sample
              puts "You now have #{card_1}, #{card_2} and a #{card_3}."
              hand_value = value_of_cards.values_at(card_1, card_2, card_3).inject(:+)
              puts "You have a value of #{hand_value}."
            end
        end
    end
end


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












# 3. Enhance #2 by adding a card if the score is less than 17.
# Example Output #1:
# 2 A 6
# You have 19.

# Example Output #1:
# Q A
# You have 20.






# 4. Enhance #3 by displaying a message if the score is over 21.
# Example Output #1:
# 7 A 6
# You have 24.
# You're busted!







# 5. Enhance #4 by considering an Ace to be 1 if it would prevent
# the total score from going over 21.
# Example Output #1:
# 4 A 9
# You have 14.
