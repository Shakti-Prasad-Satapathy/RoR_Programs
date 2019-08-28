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

class Deck_of_card_sorted
  $LOAD_PATH << "/home/admin1/ROR workspace/OOPS/deck_of_card_sorted/"	# loading the path of th eutility class
  $LOAD_PATH << "/home/admin1/ROR workspace/OOPS/utility/"
  require "Utility.rb"	# importing the Business class
  require "deck_Of_Card_Sorted_Business.rb"

=begin
# 
# @description : This will initialize node class and initialize @head value
# @purpose : initialize node class
#
=end

  def initialize(value)
    @head = Node.new(nil, value, nil)
  end
end

obj = Deck_of_card_sorted.new(nil)
result = Business_logic.new.deck_of_card()

Business_logic.new.add_To_Queue(result)
