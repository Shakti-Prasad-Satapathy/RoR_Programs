=begin
# 
# @Purpose : practice
# @overview : A program to find the result of a harmonic series ie. 1/1+1/2+1/3+.....+1/nth
#			  Where n is the value the user inputed
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

N = 0
print "Enter the nth value for Harmonic Number seriese"
N = gets.to_i
result = 0.to_f
for a in 1..N
  result = result + 1 / a.to_f
end

puts result
