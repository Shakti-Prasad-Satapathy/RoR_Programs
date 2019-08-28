=begin
# 
# @Purpose : practice
# @overview : A program to take a Decimal  number, conver it in to binary then display it 
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class DecimalToBinary
  def decimal # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "Please Enter the decimal number to convert it  to binart"
    decimal = 0
    decimal = gets.to_i
    result = Utility.new.convert(decimal).to_i # Calling the businesslogic method from utility class and store the result in a variable
    puts "After convertion the binary for is #{result}"
  end
end

obj = DecimalToBinary.new() # Creating the class object
puts obj.decimal  #Method calling by class object reference
