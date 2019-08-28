=begin
# 
# @Purpose : practice
# @overview : A program to given the temperature in fahrenheit as input outputs the 
#             temperature in Celsius or viceversa using the formula
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Tempreture
  def get_temp # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "please enter tempreture in Celsius"
    celsius = 0
    celsius = gets
    puts "please enter tempreture in Fahrenheit"
    fahrenheit = 0
    fahrenheit = gets
    Utility.new.temp_convert(celsius, fahrenheit) # Calling the businesslogic method from utility class
  end
end

obj = Tempreture.new() # Creating the class objects
puts obj.get_temp #Method calling by class object reference
