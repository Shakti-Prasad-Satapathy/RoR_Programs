=begin
# 
# @Purpose : practice
# @overview : A program to take intigers as input, store them in an array, then sort them using BubbleSort
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Bubble
  def sorts # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb"  # importing the utility class
    puts "Please enter the number of intigers you wants to insert"
    n = 0
    n = gets.to_i
    num = 0
    numarray = []
    puts "now enter the numbers"
    for i in 1..n
      num = gets.to_i
      numarray.unshift(num)
    end
    result = Utility.new.insertionSort4int(numarray)  # Calling the businesslogic method from utility class and store the result in a variable
  end
end

obj = Bubble.new()  # Creating the class object
puts obj.sorts  #Method calling by class object reference
