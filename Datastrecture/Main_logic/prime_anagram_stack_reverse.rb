=begin
# 
# @Purpose : practice
# @overview : A program to to list the numbers which are both prime and anagram using stack 
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility classd

class Using_stack
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
    @head = Node.new(nil, value, nil) # initia lizing @head
  end

=begin
# 
# @description : this method will find all the prime numbers between 0-1000 and store 
#                them in a array for further processing
# @purpose : to to find the prime in given range
#
=end
  def is_prime
    prime = []
    #flag = 0
    for n in 2..1000
      flag = 0
      for i in 2..(n / 2)
        if (n % i == 0)
          flag = 1
        end
      end

      if (flag == 0)
        #print " #{n}"
        prime.unshift("#{n}")
      end
    end

    if (n == 1000)
      is_anagram(prime) # calling the is anagram method to find anagram numbers among prime numbers
    end
  end

=begin
# 
# @description : this method will find all the anagram numbers, which are prime number 
#                aswell between 0-1000 and store them in a array for further processing
# @purpose : to to find the anagram numbers among prime numbers
#
=end

  def is_anagram(prime)
    temparr = prime
    is_anagram = []
    for i in 0..(temparr.size) - 1
      for j in i + 1..(temparr.size) - 1
        arrayone = (temparr[i].split(//))
        arraytwo = (temparr[j].split(//))
        if (arrayone.size == arraytwo.size)
          arrayone = (arrayone.sort)
          arraytwo = (arraytwo.sort)
          if (arrayone == arrayone)
            is_anagram.unshift(temparr[i])  #adding elements in an array which are both anagram and prime
          end
        end
      end
    end
    return is_anagram.uniq
  end

=begin
# 
# @description : this methode will push the values given by the argument in the queue
# @purpose : adding elements in a stack
# @param {value}, which contains the the value to be entered in the stack
#
=end

  def add_to_stack(value)
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = Node.new(current_node, value, nil)
  end

=begin
  # 
  # @description : here we are passing the values for new node as value, which will be picked 
  #                up from the linked list by traversing the queue from starting and add in to a new array
  # @purpose : to retrive elements from the queue from start
  #
=end

  def remove_from_last
    current_node = @head
    while current_node.next != nil
      current_node = current_node.next
    end
    while current_node.prev != nil
      print current_node.value
      print ", "
      current_node = current_node.prev
    end
  end
end

# Basic operetions
obj = Using_stack.new(nil)

temp = obj.is_prime
for i in 0..(temp.size) - 1
  obj.add_to_stack(temp[i])
end
obj.remove_from_last
