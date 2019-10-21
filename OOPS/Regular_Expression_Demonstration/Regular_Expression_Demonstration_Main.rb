=begin
# 
# @Purpose : practice
# @overview : A program to take user full name and contact number as Input such abcd and 
#             and display  Hello <<first name>>, We have your full name as <<full name>>
#             in our system. your contact number is 91-<<Contact number>>. Please,let us 
#             know in case of any clarification Thank you BridgeLabz <<Current date>>. 
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
require "date"
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Regular_Expression_Demonstration/"	# loading the path of th eutility class
require "Regular_Expression_Demonstration_Business.rb"
full_name = ""
puts "Please enter your full name"
full_name = gets.chomp
ph_no = 0
puts "Please enter your contact number"
ph_no = gets.chomp

arrayone = (full_name.split(" "))

display_Expression(full_name, arrayone[0], ph_no)
