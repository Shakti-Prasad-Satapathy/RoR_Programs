=begin
# 
# @Purpose : practice
# @overview : A a Program which creates Banking Cash Counter where people come in to 
#             deposit Cash and withdraw Cash. Have an input panel to add people to Queue 
#             to either deposit or withdraw money and dequeue the people. Maintain the 
#             Cash Balance
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Using_queue
  $LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
  require "utility.rb"	# importing the utility class
=begin
# 
# @description : here we are passing the value for head as value, next as nil and prev 
#                also as nil to the Node class by the refference of current class object 
#                reference
# @purpose : to initialize the @head value on the refference of Node class
# @param {value}, which contains the @head value
#
=end
  def initialize(value)
    @head = Node.new(nil, value, nil) # initializing @head
  end

=begin
# 
# @description : this methode will push the customers given by the argument in the queue
# @purpose : adding elements in a queue
# @param {value}, which contains the the value to be entered in the stack
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
# @description : this methode will perform the bank transactions like cash deposit and 
#                cash withdraw. aswel  this method will maintain the queue, like if any
#                customer done with its work then remove from the queue
# @purpose : maintain the transaction in bank
#
=end

  def transection
    current_node = @head
    puts "enter your choice ('1' for deposit and '2' for withdraw)"
    choice = 0
    choice = gets.to_i
    if choice == 1
      amount = 0
      puts "Please enter the amount you wants to Deposit"
      d_amount = gets.to_i
      @@b_amount = @@b_amount + d_amount
      puts "current bank amount ===> #{@@b_amount}"
      current_node = current_node.next
    elsif choice == 2
      amount = 0
      puts "Please enter the amount you wants to Withdraw"
      w_amount = gets.to_i
      if (w_amount <= @@b_amount)
        @@b_amount = @@b_amount - w_amount
        puts "current bank amount ===> #{@@b_amount}"
      else
        puts "Sorry... In sufficient balance in bank. try after some time"
      end
      current_node = current_node.next
    else
      puts "Sorry... You have entered the wrong choice"
    end
  end
end

obj = Using_queue.new(1)  # creating the class object
# basic operation like initializing the bank own balance, number of user... etc
customer = 0
puts "Please enter total number of customer comes in bank"
customer = gets.to_i

for i in 2..customer
  obj.add_to_queue(i)
end
@@b_amount = 100000
for i in 1..customer
  obj.transection
end
