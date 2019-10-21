=begin
# 
# @Purpose : practice
# @overview : A program to to create a 2d array where in 1 dimention store the numbers 
#             which are prime and anagram and in another dimention store the numbers 
#             which are not prime and anagram
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

is_anagram = []          # declaring array
is_not_anagram = []      # declaring array
temparr = []             # declaring array

for n in 2..1000
  flag = 0
  for i in 2..n / 2
    if (n % i == 0)
      flag = 1
    end
  end

  if (flag == 0)
    temparr.unshift(" #{n}") # adding prime numbers to an array
  end
end
for i in 0..(temparr.size) - 1
  for j in i + 1..(temparr.size) - 1
    arrayone = (temparr[i].split(//))
    arraytwo = (temparr[j].split(//))
    if (arrayone.size == arraytwo.size)
      arrayone = (arrayone.sort)
      arraytwo = (arraytwo.sort)
      if (arrayone == arrayone)
        is_anagram.unshift(temparr[i]) # adding anagrams in array
      else
        is_not_anagram.unshift(temparr[i])    # adding non-anagrams in array
      end
    else
      is_not_anagram.unshift(temparr[i])      # adding non-anagrams in array
    end
  end
end

array = Array.new(2)
array[0] = Array.new(is_not_anagram.uniq)   # in a 2D array adding all elements which are npt prime and anagram
array[1] = Array.new(is_anagram.uniq)       # in a 2D array adding all elements which are npt prime and anagram

puts "followings are prime but not an anagram between o-1000"
puts "======================================================="
print array[0]
puts
puts "followings are both prime and anagram between o-1000"
puts "======================================================="
print array[1]
puts
