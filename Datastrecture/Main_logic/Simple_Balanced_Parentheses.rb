=begin
# 
# @Purpose : practice
# @overview : A program to take a simple mathemetical expression from the user and check 
#             whethere it is a balanced expression or  not by pushing the paranthesis in 
#             a stack
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility class

puts "Enter an mathemetical expression :"
str = gets
check_balanced_parentheses(str) # calling the method from utility class
