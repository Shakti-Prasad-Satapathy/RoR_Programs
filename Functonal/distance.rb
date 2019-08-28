=begin
# 
# @Purpose : practice
# @overview : A program to find the distance of a co-ordinate point from origin 
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

x1 = 0
y1 = 0
x = 0.to_i
y = 0.to_i
print "Enter x1 value of  the position"
print "Enter y1 value of  the position"
x1 = gets.to_i
y1 = gets.to_i
# importing camath for execuatin of sqrt()
require "cmath"
x = CMath.sqrt(((x - x1) ** 2) + ((y - y1) ** 2)).to_f
puts x
