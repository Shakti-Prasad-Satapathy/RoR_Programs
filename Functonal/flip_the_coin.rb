=begin
# 
# @Purpose : practice
# @overview : A program to enter the times of toss find the % of heads and tails  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

N = 0
print "Enter how many time you wants to flip the coin"
N = gets.to_i
heads = 0.to_i
tails = 0.to_i
for a in 1..N
  r = rand().to_f # rand() used for generating rendom number between 0-1
  if r < 0.5
    heads = heads + 1
  else
    tails = tails + 1
  end
end
puts "Numbers of heads=", heads
puts "Numbers of tails=", tails

puts "% of heads = #{(heads.to_f / N.to_f) * 100}"
puts "% of tails =  #{(tails.to_f / N.to_f) * 100}"
