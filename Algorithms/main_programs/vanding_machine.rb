=begin
# 
# @Purpose : practice
# @overview : (Vending Machine) There is 1, 2, 5, 10, 50, 100, 500 and 1000 Rs Notes which 
#             can be returned by Vending Machine. Write a Program to calculate the minimum 
#             number of Notes as well as the Notes to be returned by the Vending Machine 
#             as a Change
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class VendingMachine
  def vending # Creating the class object
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "please enter a anount"
    amount = 0
    amount = gets.to_i
    Utility.new.vanding(amount) # Calling the businesslogic method from utility class
  end
end

obj = VendingMachine.new() # Creating the class object
puts obj.vending #Method calling by class object reference
