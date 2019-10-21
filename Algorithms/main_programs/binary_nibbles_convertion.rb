=begin
# 
# @Purpose : practice
# @overview : A program to read an integer as an Input, convert to Binary using toBinary function 
			  and Swap nibbles and find the new number
  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class DecimalToBinaryNibble
  def decimal # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility"	# loading the path of th eutility class
    require "Utility.rb"	# importing the utility class
    puts "Please Enter the decimal number to convert it  to binart"
    decimal = 0
    decimal = gets.to_i
    result = (Utility.new.convert(decimal)).to_i
    puts "After convertion the binary for is #{result}"
    Utility.new.nibbles(result)	# Calling the businesslogic method from utility class
  end
end

obj = DecimalToBinaryNibble.new()	# Creating the class object
puts obj.decimal	#Method calling by class object reference
