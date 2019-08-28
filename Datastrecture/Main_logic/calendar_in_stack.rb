=begin
# 
# @Purpose : practice
# @overview : A program to take month and year from user and then print the calendar using stack
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility class

class Calendar_stack
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
# @description : this methode will push the values given by the argument in a stack
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
# @description : this methode will push the values given by the argument in a stack
# @purpose : adding elements in a stack
# @param {day}, which contains the the value of date ie.1 (alwes)
# @param {month}, which contains the month value enter by the user
# @param {year}, which contains the year value enter by the user
# @param {days}, which contains the total number of day of that month which entered by the user
# @param {dayx}, which contains the day of each date ie. sunday, monday,......
#
=end
  def display_calendar(day, month, year, days, dayx)
    current_node = @head
    temp = dayx

    for i in 1..temp
      print "   "
    end
    #puts days[month]
    temp = 1

    while current_node.next != nil
      if current_node.value == temp && temp < 10
        print " 0#{current_node.value}"
        temp = temp + 1
      else
        print " #{current_node.value}"
      end

      if (((current_node.value + dayx) % 7 == 0) || (current_node.value == days[month]))
        puts ""
      end
      current_node = current_node.next
    end
    puts ""
  end
end

# User input
month = 0
puts "Please enter the month (1 for jan, 2 for feb.....)"
month = gets.to_i
year = 0
puts "Please enter the year"
year = gets.to_i
day = 1

# current date day finding logic
y = year - (14 - month) / 12
x = y + y / 4 - y / 100 + y / 400
m = month + 12 * ((14 - month) / 12) - 2
d = (day + x + (31 * m) / 12) % 7
dayx = d

months = Array.[]("", "January", "February", "March", "April", "May", "June", "July",
                  "August", "September", "October", "November", "December")

days = Array.[](0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

# condetion for leap year
if (month == 2 && (year % 4 == 0) && (year % 100 != 0) && (year % 400 == 0))
  days[month] = 29
end

puts "    #{months[month]}  #{year}"
puts (" S  M  Tu  W  T  F  S")
puts("   ")

obj = Calendar_stack.new(1)   # initializing the current class
for i in 2..(days[month])
  obj.add_to_stack(i) # adding values (dates in the stack)
end
obj.display_calendar(day, month, year, days, dayx) # calling the display() which display the calendar
