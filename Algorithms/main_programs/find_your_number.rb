=begin
# 
# @Purpose : practice
# @overview : A program to take a user input N, asks you to think of a number between 0 
#             and N-1, where N = 2^n, and always guesses the answer with n questions the 
#             Number N and then recursively ask true/false if the number is between a 
#             high and low value Print the intermediary number and the final answer
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class FindYourNumber
  def findnumber # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "enter a number 'n' which reffers the range ie 0 to 2^n"
    num = 0
    num = gets.to_i

    Utility.new.findno(num) # Calling the businesslogic method from utility class
  end
end

obj = FindYourNumber.new() # Creating the class object
puts obj.findnumber #Method calling by class object reference
