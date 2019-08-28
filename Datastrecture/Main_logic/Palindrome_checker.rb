=begin
# 
# @Purpose : practice
# @overview : A program to take a string as input and then check whethere it is a 
#             palindeome or notusing double ended queue
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility class

class Dequeue
=begin
# 
# @description : here we are passing the value for head as value, next as nil and prev 
#                also as nil to the Node class by the refference of current class object 
#                reference
# @purpose : to to initialize the @head value on the refference of Node class
# @param {value}, which contains the @head value
#
=end
  def initialize(value)
    @head = Node.new(nil, value, nil)
  end

=begin
  # 
  # @description : here we are passing the values for new node as value, which will be picked 
  #                up from the linked list by traversing the list from starting and add in to a new array
  # @purpose : to retrive elements from the linked list from start
  # @param {lines}, which contains the list to pup off the elements
  #
=end

  def remove_from_first(lines)
    from_first = []
    current_node = @head
    for i in 0..(lines.size) / 2
      from_first.unshift(current_node.value)
      current_node = current_node.next
    end
    remove_from_last(from_first)
  end

=begin
  # 
  # @description : here we are passing the values for new node as value, which will be 
  #                picked up from the linked list by traversing the list from last point 
  #                (end) and add in to a new array
  # @purpose : to retrive elements from the linked list from end
  # @param {lines}, which contains the list to pup off the elements
  #
=end

  def remove_from_last(from_first)
    current_node = @head
    from_first = from_first
    from_last = []
    while current_node.next != nil
      current_node = current_node.next
    end
    for i in 0..(from_first.size) - 1
      from_last.unshift(current_node.value)
      current_node = current_node.prev
    end
    check(from_last, from_first)
  end

=begin
# 
# @description : this methode will push the values given by the argument in the queue
# @purpose : adding elements in a queue
# @param {value}, which contains the the value to be entered in the linked list
#
=end

  def add_to_queue(value)
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = Node.new(current_node, value, nil)
  end

=begin
# 
# @description : this methode will take 2 arrays which contains 1st half and last half of 
#                the user inputed string and then it will compair those arrays to check 
#                wherhere those arrays are same or note, If same then palindrome else not
# @purpose : compiaresion of array
# @param {from_first}, which contains the the array containing 1st half letters of the user
#                     inputed string
# @param {from_last}, which contains the the array containing last half letters of the user
#                     inputed string
=end

  def check(from_last, from_first)
    puts from_last
    puts from_first
    if (from_last == from_first)
      puts "palindrome"
    else
      puts "xxxxxxxxxxxxxxxxxxxxxxxxx"
    end
  end
end

#basic operetions like user inputs and all

lines = []
puts "Please enter a string to search"
str = ""
str = gets.chop

lines = lines + str.split(//)

obj = Dequeue.new(lines[0])
for i in 1..(lines.size) - 1
  obj.add_to_queue(lines[i].to_s) # calling add_to_queue to add elements in an queue
end

obj.remove_from_first(lines) # calling remove_from_first to add elements in an array for further processing
