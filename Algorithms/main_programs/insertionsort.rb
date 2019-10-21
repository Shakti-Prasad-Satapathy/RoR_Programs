=begin
# 
# @Purpose : practice
# @overview : A program to Reads in strings from standard input and prints them in 
#             sorted order Uses insertion sort
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Insertion
  def sorts # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "Please enter the number of string you wants to insert"
    n = 0
    n = gets.to_i
    str = ""
    strarray = []
    puts "now enter the strings"
    for i in 1..n
      str = gets.chomp
      strarray.unshift(str)
    end
    result = Utility.new.insertionSort4str(strarray) # Calling the businesslogic method from utility class
  end
end

obj = Insertion.new() # Creating the class object
puts obj.sorts #Method calling by class object reference
