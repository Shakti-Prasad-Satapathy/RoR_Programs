=begin
# 
# @Purpose : practice
# @overview : Simulates a gambler who start with $stake and place fair $1 bets until he/she goes broke (i.e. has no money) 
#			  or reach $goal. Keeps track of the number of times he/she wins and the number of bets he/she makes. Run the 
#			  experiment N times, averages the results, and prints them out
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

puts "Please Enter The amount you want to play"
stake = 0
stake = gets.to_i
puts "Please Enter The amount you want to play"
goal = 0
goal = gets.to_i
puts "Please Enter The amount you want to play"
trails = 0
trails = gets.to_i
wins = 0.to_f
loose = 0.to_f
for i in 1..trails	# loop for number of times user playing
  cash = stake			
  while cash > 0 && cash < goal	#loop untill the user win / loose
    if (rand().to_f < 0.5) 
      cash = cash + 1
    else
      cash = cash - 1
    end
    if (cash == goal)
      wins = wins + 1
    end
	if (cash == 0)
      loose = loose + 1
    end
  end
end

puts "wins = #{wins}"
puts "loose = #{loose}"
puts "% of game own is = #{(wins.to_f / trails.to_f) * 100}"
puts "% of game loose is = #{(loose.to_f / trails.to_f) * 100}"
