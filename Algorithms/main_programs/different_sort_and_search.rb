=begin
# 
# @Purpose : practice
# @overview : A program to perform following
#             i)   binarySearch method for integer
#             ii)  binarySearch method for String
#             iii) insertionSort method for integer
#             iv)  insertionSort method for String
#             v)   bubbleSort method for integer
#             vi)  bubbleSort method for String
#             vii) Sort the elapsed time in decending order
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class SortAndSearch
  def sortandsearch # Method creation
    $LOAD_PATH << "/home/admin1/ROR workspace/Algorithms/utility" # loading the path of th eutility class
    require "Utility.rb" # importing the utility class
    time = [] # array declaretion for storing the elapsed times for all methodes / process
    arr = Array[9, 3, 60, 35, 2, 45, 320, 5]  # array initialization (int type array creation)
    #print arr
    result = Utility.new.bubbleSort4int(arr) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)
    result = Utility.new.insertionSort4int(arr) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)
    key = 60
    result = Utility.new.binarySearch4int(arr, key) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)

    str = Array["bollo", "cat", "how", "dog", "you"] #array initialization (String type array creation)
    result = Utility.new.bubbleSort4str(str) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)
    result = Utility.new.insertionSort4str(str) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)
    str = str.sort # To sort the String array
    skey = "dogs"
    result = Utility.new.binarySearch4str(str, skey) # Calling the businesslogic method from utility class and store the result in a variable
    time.unshift(result)
    time = time.sort
    time = time.reverse
    print time
  end
end

obj = SortAndSearch.new() # Creating the class object
puts obj.sortandsearch #Method calling by class object reference
