=begin
# 
# @Purpose : practice
# @overview : A program to take 2 Strings as Input such abcd and dcba and Check for Anagrams  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Anagram
  def anagram # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility"	# loading the path of th eutility class
    require "Utility.rb"	# importing the utility class
    puts "please enter a string"
    str1 = ""
    str1 = gets
    puts "please enter another string"
    str2 = ""
    str2 = gets
    Utility.new.anagramlogic(str1, str2)	# Calling the businesslogic method from utility class
  end
end

obj = Anagram.new()	# Creating the class object
puts obj.anagram	#Method calling by class object reference
