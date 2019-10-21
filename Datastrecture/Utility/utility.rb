class Node
  attr_accessor :value, :next, :prev

  def initialize(prev_node, value, next_node)
    @prev = prev_node
    @value = value
    @next = next_node
  end
end

#******************************************************************************************
def check_balanced_parentheses?(entered_string)
  stack = []
  entered_string.chars.each do |token|
    case token
    when "("
      stack.push "("
    when ")"
      if stack.empty? || stack.pop != "("
        return false
      end
    end
  end
  stack.empty?
end

#***************************************************************************
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
          is_anagram.unshift(temparr[i])
        end
      end
    end
  end
  #print " #{is_anagram.uniq}"
  #for i in 0..(is_anagram.size)-1 do
  return is_anagram.uniq
  #end

end

def calender_logic(day, month, year)
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
  print_dates(day, month, year, days, dayx, months)
end

#***************************************************************************
def print_dates(day, month, year, days, dayx, months)
  puts "    #{months[month]}  #{year}"
  puts (" S  M  Tu  W  T  F  S")

  puts("   ")
  temp = dayx
  #if dayx==temp && temp<7
  for i in 1..temp
    print "   "
  end
  #end
  temp = 1
  for i in temp..days[month]
    if i == temp && temp < 10
      print "  #{i}"
      temp = temp + 1
    else
      print " #{i}"
    end

    if (((i + dayx) % 7 == 0) || (i == days[month]))
      puts ""
    end
  end
end

#**********************************************
