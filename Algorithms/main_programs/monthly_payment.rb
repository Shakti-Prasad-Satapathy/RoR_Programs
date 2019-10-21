=begin
# 
# @Purpose : practice
# @overview : A program to to calculate monthlyPayment that reads in three inputs
#             P, Y, and R and calculates the monthly payments you would have to make over 
#             Y years to pay off a P principal loan amount at R per cent interest 
#             compounded monthly
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class MonthlyPayment
  def payments # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "Enter the principal loan amount"
    principal = 0
    principal = gets.to_f
    puts "Enter the interest per cent"
    interest = 0
    interest = gets.to_f
    puts "Enter the total years"
    years = 0
    years = gets.to_f
    Utility.new.paymentLogic(principal, interest, years) # Calling the businesslogic method from utility class
  end
end

obj = MonthlyPayment.new() # Creating the class object
puts obj.payments #Method calling by class object reference
