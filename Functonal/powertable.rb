=begin
# 
# @Purpose : practice
# @overview : A program to take a user input N and prints a table of the powers of 2 that are less than or equal to 2^N  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

N = 0
print "Enter the value of N, where N reffers the number of which you wants to construxt power table? "
N = gets.to_i

power = 1
while power <= (2 ** N)	# the loop will work untill the value of power will 2^N
  power = power * N
  puts power
end
