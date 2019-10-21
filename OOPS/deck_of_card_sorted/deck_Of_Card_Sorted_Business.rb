=begin
# 
# @Purpose : practice
# @overview : This programme will generatew a dec of card then suffer those cards thenn 
#             provide the cards to 4 players, where each contains 9 cards. then display 
#             it  using Queue.This class contains the business logic only
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Business_logic
  $LOAD_PATH << "/home/admin1/ROR workspace/OOPS/utility/"
  require "Utility.rb"

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
#
=end

  def distribute()
    puts "==> #{@head.value} "
    count = 1
    player_1 = []
    player_2 = []
    player_3 = []
    player_4 = []
    current_node = @head
    puts "==> #{current_node.value} <==="
    while current_node.next != nil
      if (count < 10)
        player_1.unshift(current_node.value)
        count = count + 1
      elsif (count >= 10 && count <= 18)
        player_2.unshift(current_node.value)
        count = count + 1
      elsif (count >= 19 && count <= 27)
        player_3.unshift(current_node.value)
        count = count + 1
      elsif (count >= 28 && count <= 36)
        player_4.unshift(current_node.value)
        count = count + 1
      else
        break
      end
      current_node = current_node.next
    end
    player_1 = player_1.sort
    player_2 = player_2.sort
    player_3 = player_3.sort
    player_4 = player_4.sort
    puts "player_1 ==== #{player_1}"
    puts "player_2 ==== #{player_2}"
    puts "player_3 ==== #{player_3}"
    puts "player_4 ==== #{player_4}"
  end

=begin
# 
# @description : This will create a queue that contains all cards of a deck.
# @purpose : add deck of cards in a queue
# @param {cards}, which contains array of all cards
#
=end

  def add_To_Queue(cards)
    @head = Node.new(nil, cards[0], nil)
    current_node = @head
    for loop in 1..51
      while current_node.next != nil
        current_node = current_node.next
      end
      current_node.next = Node.new(current_node, cards[loop], nil)
    end
    distribute()
  end
end
