

class Calendar_queue
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add_to_queue(value)
    current_node = @head

    while current_node.next != nil
      #print current_node.value
      #print "  "
      current_node = current_node.next
      #puts current_node.value
    end
    current_node.next = Node.new(value, nil)
  end

  #*********************************************************************************
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

#*************////////////////*********************//////////////////*************
month = 0
puts "Please enter the month (1 for jan, 2 for feb.....)"
month = gets.to_i
year = 0
puts "Please enter the year"
year = gets.to_i
day = 1

y = year - (14 - month) / 12
x = y + y / 4 - y / 100 + y / 400
m = month + 12 * ((14 - month) / 12) - 2
d = (day + x + (31 * m) / 12) % 7
dayx = d

months = Array.[]("", "January", "February", "March", "April", "May", "June", "July",
                  "August", "September", "October", "November", "December")

days = Array.[](0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

if (month == 2 && (year % 4 == 0) && (year % 100 != 0) && (year % 400 == 0))
  days[month] = 29
end

puts "    #{months[month]}  #{year}"$LOAD_PATH << "/home/admin1/ROR workspace/Datastrecture/Utility"	# loading the path of th eutility class
require "utility.rb"	# importing the utility class

class Calendar_queue
  def initialize(value)
    @head = Node.new(nil, value, nil)
  end

  def add_to_queue(value)
    current_node = @head

    while current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = Node.new(current_node, value, nil)
  end

  #*********************************************************************************
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

#*************////////////////*********************//////////////////*************
month = 0
puts "Please enter the month (1 for jan, 2 for feb.....)"
month = gets.to_i
year = 0
puts "Please enter the year"
year = gets.to_i
day = 1

y = year - (14 - month) / 12
x = y + y / 4 - y / 100 + y / 400
m = month + 12 * ((14 - month) / 12) - 2
d = (day + x + (31 * m) / 12) % 7
dayx = d

months = Array.[]("", "January", "February", "March", "April", "May", "June", "July",
                  "August", "September", "October", "November", "December")

days = Array.[](0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)

if (month == 2 && (year % 4 == 0) && (year % 100 != 0) && (year % 400 == 0))
  days[month] = 29
end

puts "    #{months[month]}  #{year}"
puts (" S  M  Tu  W  T  F  S")
puts("   ")

#**********************************************////////////////////////////////
obj = Calendar_queue.new(1)
for i in 2..(days[month])
  obj.add_to_queue(i)
end
obj.display_calendar(day, month, year, days, dayx)

#////////////////////////////////////*****************************************

puts (" S  M  Tu  W  T  F  S")
puts("   ")

#**********************************************////////////////////////////////
obj = Calendar_queue.new(1)
for i in 2..(days[month])
  obj.add_to_queue(i)
end
obj.display_calendar(day, month, year, days, dayx)

#////////////////////////////////////*****************************************
