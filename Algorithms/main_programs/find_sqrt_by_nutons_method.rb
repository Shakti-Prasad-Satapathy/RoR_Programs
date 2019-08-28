=begin
# 
# @Purpose : practice
# @overview : A program to to compute the square root of a nonnegative number c given 
#             in the input using Newton's method
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class SqrtNewtonMethod
  def sqrt # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    puts "Please Enter the square number to find its square root"
    sqrno = 0
    sqrno = gets.to_i
    Utility.new.nutonssqrt(sqrno) # Calling the businesslogic method from utility class
  end
end

obj = SqrtNewtonMethod.new() # Creating the class object
puts obj.sqrt	#Method calling by class object reference
