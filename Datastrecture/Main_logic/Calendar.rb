=begin
# 
# @Purpose : practice
# @overview : A program to take month and year from user and then print the calendar
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility class
month = 0
puts "Please enter the month (1 for jan, 2 for feb.....)"
month = gets.to_i
year = 0
puts "Please enter the year"
year = gets.to_i
day = 1
calender_logic(day, month, year)  # calling the method from utility class
