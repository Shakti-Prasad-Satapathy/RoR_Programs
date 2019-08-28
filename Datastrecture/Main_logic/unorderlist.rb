=begin
# 
# @Purpose : practice
# @overview : A program to read a file containing Strings then insert a new  String
#             if the number is not exist then add that number if exist then remove that String
#             then again write that String in the same file
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility classd

class LinkedList
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
# @description : here we are passing the value for new node as value, which will be added 
#                in to the linked list at the end
# @purpose : to add new element in the linked list
# @param {str}, which contains the int value which we wants to insert in the list
#
=end
  def insert(str)
    fr = File.new("/home/admin1/Desktop/textfile/tf.txt", "w") # making writable the file
    current_node = @head
    while current_node.next != nil # traversing the list till end
      fr.puts current_node.value
      current_node = current_node.next
    end
    current_node.next = str
    fr.puts str
    fr.close
  end

=begin
# 
# @description : this methode will push the values given by the argument in the linked list
# @purpose : adding elements in a linked list
# @param {value}, which contains the the value to be entered in the linked list
#
=end
  def add_to_list(value)
    current_node = @head
    while current_node.next != nil # traversing the list till end
      current_node = current_node.next
    end
    current_node.next = Node.new(current_node, value, nil)
  end

=begin
  # 
  # @description : here we are passing the value for new node as value, which will be deleated 
  #                in to the linked list by traversing the list
  # @purpose : to remove some existingw element in the linked list
  # @param {value}, which contains the string value which we wants to remove from the list
  #
=end

  def delete(value)
    current_node = @head
    fw = File.new("/home/admin1/Desktop/textfile/tf.txt", "w") # making writable the file

    if current_node.value == value
      @head = current_node.next
    end
    while current_node.next != nil
      if (current_node.value == value)
        current_node = current_node.next
      end
     f = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")
     f = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")ng the value
     f = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")
    ef = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")
    ff = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")
  endf = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")

=begin
  # 
  # @description : here the node will traverse till end and show the list (display all 
  #                elements) by storing each elements in an array
  # @purpose : to display the linked list
  #
=end
  def return_list
    elements = []
    current_node = @head
    while current_node.next != nil
      elements << current_node.value # appending elements in an array
      current_node = current_node.next
    end
    puts " #{elements}"
  end
end

# Basic operetions like reading the file, store in an array then added in the list

lines = []
begin #equevelent to try block
  f = File.new("/home/admin1/Desktop/textfile/tf.txt", "r")
  while (line = f.gets)
    lines = lines + line.split(" ")
  end
  f.close
rescue => e # equevelent to catch block
  puts e
end
obj = LinkedList.new(lines[0])
for i in 1..lines.size
  obj.add_to_list(lines[i].to_s)
end

puts "Please enter a string to search"
str = ""
str = gets.chop
exist = 0
for i in 1..lines.size - 1
  if (str == lines[i])
    exist = exist + 1
  end
end
if (exist > 0) # checking whethere the inputed number is exist in the list or not
  obj.delete(str) # calling the delete method
else
  obj.insert(str) # calling the insert method
end
