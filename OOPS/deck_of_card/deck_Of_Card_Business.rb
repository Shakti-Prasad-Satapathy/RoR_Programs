=begin
# 
# @Purpose : practice
# @overview : This programme will generatew a dec of card then suffer those cards thenn 
#             provide the cards to 4 players, where each contains 9 cards. then display 
#             it  using 2d array.This class contains the business logic only
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
class Business_logic

=begin
# 
# @description : This will create an array eaich contains all cards of a deck. then suffel that
# @purpose : create an unsorted array which contains a deck of cards
#
=end
  def deck_of_card
    ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
    suits = ["♣", "♥", "♠", "♦"]
    cards = []

    ranks.each do |rank|
      suits.each do |suit|
        cards.unshift(rank + suit)
      end
    end
    cards.shuffle!
    return cards
  end

=begin
# 
# @description : This will distribute the cards among 4 players and each  should gate 9 cards then display
# @purpose : distribute and display the cards
# @param {cards}, which contains array of all cards
#
=end
  def distribute(cards)
    first_dimention = []
    second_dimention = []
    temparr = []
    count = 1
    for i in 0..51
      temparr.unshift(cards[i])
      count = count + 1
      if count % 9 == 0
        first_dimention.unshift("player no  #{count / 9}")
        second_dimention.unshift("  #{temparr}")    # adding the prime numbers belongs to that range
        temparr.clear
      end
    end
    array = Array.new(2)  # Creating a 2d array
    array[0] = Array.new(first_dimention)   # adding in 1st demention
    array[1] = Array.new(second_dimention)    # ading in 2nd dimention
    for i in 0..(array[0].size) - 1
      print array[0][i]
      print array[1][i]
      puts
    end
  end
end
