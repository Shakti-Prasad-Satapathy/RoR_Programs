=begin
# 
# @Purpose : practice
# @overview : A program to Computes the prime factorization of N using brute force  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

num = 0
print "Enter the number of which you wants to find prime fector"
num = gets.to_i

for i in 2..num
  while num % i == 0
    puts "#{i}  "
    num = num / i
  end

  if (num > 2)
    puts num
  end
end
