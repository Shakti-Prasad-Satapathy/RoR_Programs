=begin
# 
# @Purpose : practice
# @overview : A class which contains methods which contains business logic of all algorithm programs  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

class Utility
=begin
# 
# @description : taking input by method parameater and execuate the anagram logic
# @purpose : to check the entered strings are anagram or not
# @param {str1}, which contains 1 String
# @param {str2}, which contains another String
#
=end
  def anagramlogic(str1, str2)
    arrayone = (str1.split(//))
    arraytwo = (str2.split(//))
    if (str1.size == str2.size)
      arrayone = (arrayone.sort)
      arraytwo = (arraytwo.sort)
      if (arrayone == arrayone)
        puts "It is an anagram"
      else
        puts "It is not an anagram"
      end
    else
      puts "It is not an anagram"
    end
  end

=begin
# 
# @description : taking input by method parameater and execuate the checkprime logic
# @purpose : to check the entered intiger value is prime or not
# @param {n}, which contains the values 2 to 1000
#
=end

  def checkprime(n)
    flag = 0.to_i
    for i in 2..n / 2
      if (n % i == 0)
        flag = 1
      end
    end

    if (flag == 0)
      puts n
    end
  end

=begin
# 
# @description : taking input by method parameater and execuate the palindrome logic
# @purpose : to check the entered intiger value is palindrome or not
# @param {array}, which contains the values from 2 to 1000 which are prime
#
=end

  def palindrome(array)
    palindromearr = []
    for a in 0..array.size
      sum = 1
      temp = array[a]
      r = 0
      while temp.to_i >= 1
        r = temp % 10
        sum = (sum * 10) + r
        temp = temp / 10
      end
      if (a == sum)
        puts "#{a} is both prime and paliondrome"
        palindromearr.unshift(a)
      end
    end
    return palindromearr
  end

=begin
# 
# @description : taking input by method parameater and execuate the vanding logic to find
#                the minimum number of change require 
# @purpose : to find the minimum number of change require 
# @param {amount}, which contains the amount the user entered to get change
#
=end

  def vanding(amount)
    remender = amount % 1000
    quotient = amount / 1000
    puts "#{quotient} nos of 1000 rs"
    quotient = remender

    remender = remender % 500
    quotient = quotient / 500
    puts "#{quotient} nos of 500 rs"
    quotient = remender

    remender = remender % 100
    quotient = quotient / 100
    puts "#{quotient} nos of 100 rs"
    quotient = remender

    remender = remender % 50
    quotient = quotient / 50
    puts "#{quotient} nos of 50 rs"
    quotient = remender

    remender = remender % 10
    quotient = quotient / 10
    puts "#{quotient} nos of 10 rs"
    quotient = remender

    remender = remender % 5
    quotient = quotient / 5
    puts "#{quotient} nos of 5 rs"
    quotient = remender

    remender = remender % 2
    quotient = quotient / 2
    puts "#{quotient} nos of 2 rs"
    quotient = remender

    puts "#{quotient} nos of 1 rs require"
  end

=begin
# 
# @description : taking input by method parameater and execuate the tempreture convertion logic
# @purpose : to convert the tempreture from celsius fahrenheit and vice versa
# @param {celsius}, which contains the tempreture inputed by user in celsius
# @param {fahrenheit}, which contains the tempreture inputed by user in fahrenheit
#
=end

  def temp_convert(celsius, fahrenheit)
    f = 0
    c = 0
    f = ((celsius.to_f * 9) / 5) + 32
    puts "Celsius in Fahrenheit = #{f}"

    c = (fahrenheit.to_f - 32) * 5 / 9
    puts "Fahrenheit in Celsius = #{c}"
  end

=begin
# 
# @description : taking input by method parameater and execuate the palindrome method logic to find the total payment
# @purpose : calculates the monthly payments you would have to make
# @param {principal}, which contains the principal loan amount
# @param {interest}, which contains the per cent interest compounded monthly
# @param {years}, which contains the years to pay off
#
=end

  def paymentLogic(principal, interest, years)
    n = 12 * years
    r = interest / (12 * 100)
    payment = (principal * r) / (1 - (1 + r) ** (-n))
    puts "Total Payment is= #{payment}"
  end

=begin
# 
# @description : taking input by method parameater and findout the sqrt using newton's sqrt method
# @purpose : to find the sqrt using newton's sqrt method
# @param {sqrno}, which contains the values entered by user
#
=end

  def nutonssqrt(sqrno)
    x = (1 + sqrno) / 2.0

    loop do
      ox = x
      x = (x + sqrno.to_f / x) / 2.0
      break if x >= ox
    end

    puts "The square root of #{sqrno} is #{x}"
  end

=begin
# 
# @description : taking input by method parameater and convert the decimal numbertto binary number
# @purpose : to convert decimal to binary
# @param {decimal}, which contains the decimal values entered by user
#
=end
  def convert(decimal)
    decimal = decimal.to_i
    a = 0.to_i
    x = ""
    while decimal > 0
      a = (decimal % 2).to_s

      x = x + a
      decimal = decimal / 2
    end
    return x
  end

=begin
# 
# @description :to do the following work withm the inputed binary number
#                i) Swap nibbles and find the new number.
#                ii) Find the resultant number is the number is a power of 2
# @purpose : to convert decimal to binary
# @param {result}, which contains the binary value comes by the return of convert()
#
=end

  def nibbles(result)
    y = result.to_i
    binary = []
    i = 7
    while i >= 0
      binary[i] = y % 10
      y = y / 10
      i = i - 1
    end
    mid = 4
    first = 0
    last = 4
    while first < 4
      temp = binary[first]
      binary[first] = binary[last]
      binary[last] = temp
      first = first + 1
      last = last + 1
    end
    tens = 7
    bi = 0
    for i in 0..7
      bi = bi + (binary[i].to_i * (10 ** tens))
      tens = tens - 1
    end
    puts "After nibbeling the  resultant binary numbrer is #{bi}"
    num = bi
    dec_value = 0

    base = 1

    temp = num
    while temp > 0
      last1 = temp % 10
      temp = temp / 10
      dec_value = dec_value + (last1 * base)
      base = base * 2
    end

    puts "After converting the nibbles to decimal the result is = #{dec_value}"
  end

=begin
# 
# @description : taking input by method parameater to search the imagined number within the range provided by the user
# @purpose : to find a number what a user think to search
# @param {num}, which contains the value entered by user to set the range ie 2^n
#
=end

  def findno(num)
    count = 1
    nn = (2 ** num).to_i
    arr = []

    for i in 1..nn + 1
      arr.unshift(i)
    end
    arr = arr.reverse
    puts "Think of a number between 0 to #{nn}"
    first = 0
    last = arr.size
    mid = (first + last) / 2
    while count == 1
      puts "press '1' if your number is between #{arr[first]} to #{arr[mid]} Else press '0'"
      check = gets.to_i
      if (check == 1)
        last = mid - 1
        mid = (first + last) / 2
      else
        first = mid + 1
        mid = (first + last) / 2
      end
      if (first == mid || last == mid)
        puts "press '1' if your number is between #{arr[first]} to #{arr[first]} Else press '0'"
        check = gets.to_i
        if (check == 1)
          puts "Your choosen number is #{first + 1}"
        else
          puts "Your choosen number is #{last + 1}"
        end
        count = 0
      end
    end
  end

  ##########************************3SORTIBG AND SEARCHING***********************###########

=begin
# 
# @description : taking input by method parameater to search the user inputed number from an user defined array
# @purpose : to perform binary search for intiger array
# @param {arr}, which contains the sorted array entered by user
# @param {key}, which contains the value which we wants to search
#
=end

  def binarySearch4int(arr, key)
    startTime = Time.now
    first = 0
    last = arr.size - 1
    mid = ((first + last) / 2).to_i
    while first <= last
      if (arr[mid] == key)
        puts "Element is found at index: #{mid}"
        break
      elsif (arr[mid] < key)
        first = mid + 1
      else
        last = mid - 1
      end
      mid = (first + last) / 2
    end
    if (first > last)
      puts "Element is not found!"
    end
    stopTime = Time.now
    elapsedTime = stopTime - startTime
    return elapsedTime
  end

=begin
# 
# @description : taking input by method parameater to sort the user inputed array
# @purpose : to perform Bubble Sort for intiger type array
# @param {arr}, which contains the unsorted array entered by user
#
=end

  def bubbleSort4int(arr)
    startTime = Time.now
    n = arr.length
    temp = 0
    for i in 0..n
      for j in 1..n - 1
        if (arr[j - 1] > arr[j])
          # swap elements
          temp = arr[j - 1]
          arr[j - 1] = arr[j]
          arr[j] = temp
        end
      end
    end
    print arr
    puts ""

    stopTime = Time.now
    elapsedTime = stopTime - startTime
    return elapsedTime
  end

=begin
# 
# @description : taking input by method parameater to sort the user inputed array
# @purpose : to perform insertion Sort for intiger type array
# @param {arr}, which contains the unsorted array entered by user
#
=end
  def insertionSort4int(arr)
    startTime = Time.now
    n = arr.length
    for j in 1..n
      key = arr[j]String
      i = j - 1
      while (i > -1) && (arr[i] > key.to_i)
        arr[i + 1] = arr[i]
        i = i - 1
      end
      arr[i + 1] = key
    end
    puts "After Insertion Sort"
    for i in 1..arr.length
      print "#{arr[i]} "
    end
    puts ""
    stopTime = Time.now
    elapsedTime = stopTime - startTimeString
    return elapsedTime
  end

  ########///////////////////************************/////////////////////***************//

=begin
# 
# @description : taking input by method parameater to sort the user inputed array
# @purpose : to perform Bubble Sort for String type array
# @param {arr}, which contains the unsorted array entered by user
#
=end

  def bubbleSort4str(arrs)
    startTime = Time.now
    temp = ""
    puts "Sorted string..."
    for j in 0..arrs.lengthString
      for i in j + 1..arrs.String
        # comparing stringsString
        if ((arrs[i] <=> (aString
          temp = arrs[j]
          arrs[j] = arrs[i]
          arrs[i] = temp
        end
      end
    end
    puts "Array After Bubble Sort"
    print arrs
    puts ""

    stopTime = Time.now
    elapsedTime = stopTime - startTime
    return elapsedTime
  end

=begin
# 
# @description : taking input by method parameater to sort the user inputed array
# @purpose : to perform insertion Sort for String type array
# @param {arr}, which contains the unsorted array entered by user
#
=end

  def insertionSort4str(array)
    startTime = Time.now

    for j in 0..array.length - 1
      key = array[j]
      i = j - 1
      while i >= 0
        if ((key <=> (array[i])).to_i < 0)
          break
        end
        array[i + 1] = array[i]
        i = i - 1
      end
    end
    puts "After Insertion Sort #{array}"
    stopTime = Time.now
    elapsedTime = stopTime - startTime
    return elapsedTime
  end

=begin
# 
# @description : taking input by method parameater to search the user inputed number from an user defined array
# @purpose : to perform binary search for String array
# @param {arr}, which contains the sorted array entered by user
# @param {key}, which contains the value which we wants to search
#
=end

  def binarySearch4str(arr, x)
    startTime = Time.now
    left = 0
    right = arr.length - 1
    m = 0
    while left <= right
      m = left + (right - left) / 2
      res = x <=> (arr[m])
      if (res == 0)
        puts "Element is found at index: #{m}"
      elsif (res > 0)
        left = m + 1
      else
        right = m - 1
      end
    end

    if (left == m || right == m)
      puts "Element is not found!"
    end
    stopTime = Time.now
    elapsedTime = stopTime - startTime
    return elapsedTime
  end
end     #End of class
