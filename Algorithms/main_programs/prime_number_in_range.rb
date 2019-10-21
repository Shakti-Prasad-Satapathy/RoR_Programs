=begin
# 
# @Purpose : practice
# @overview : A program to take a range of 0 - 1000 Numbers and find the Prime numbers in that range
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Isprime
  def prime # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility"	# loading the path of th eutility class
    require "Utility.rb"	# importing the utility class

    for i in 2..1000
      Utility.new.checkprime(i) # Calling the businesslogic method from utility class
    end
  end
end

obj = Isprime.new() # Creating the class object
puts obj.prime #Method calling by class object reference
