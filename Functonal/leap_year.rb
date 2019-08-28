
=begin
# 
# @Purpose : practice
# @overview : A program to enter a year and check whether it is an leap year or not  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

year = 0
print "Enter the year you want to check for leap year"
year = gets.to_i

if (year % 4 == 0 && year % 100 != 0 && year % 400 == 0)
  puts "Yes it is a leap year"
else
  puts "No it is not a leap year"
end
