=begin
# 
# @Purpose : practice
# @overview : This programme will generatew a dec of card then suffer those cards thenn 
#             provide the cards to 4 players, where each contains 9 cards. then display 
#             it  using 2d array.This class call the business logic from Business_logic class
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Deck
  $LOAD_PATH << "/home/admin1/ROR workspace/OOPS/deck_of_card"	# loading the path of th eutility class
  require "deck_Of_Card_Business.rb"	# importing the Business class

=begin
# 
# @description : This will call the business logic class methods
# @purpose : Execute business logic
#
=end

  def init
    result = Business_logic.new.deck_of_card()
    Business_logic.new.distribute(result)
  end
end

obj = Deck.new()
obj.init()
