=begin
# 
# @Purpose : practice
# @overview : A program to to create a 2d array where in 1 dimention store the range like 
#             (0-100), (100-200), (200-300),....(900-1000) then in 2nd dimention print 
#             the  prime number in corresponding range 
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
range = []      # declaring array
prim = []       # declaring array
temparr = []    # declaring array
for n in 2..1000
  #if!(n%100==0)
  flag = 0
  for i in 2..n / 2
    if (n % i == 0)
      flag = 1
    end
  end

  if (flag == 0)
    temparr.unshift(" #{n}")
  end
  if (n % 100 == 0)
    range.unshift("  #{((n-100}-#{n}")    # setting the range
    prim.unshift("  #{temparr.reverse}")    # adding the prime numbers belongs to that range
    temparr.clear
  end
end

array = Array.new(2)
array[0] = Array.new(range.reverse)   # adding in 1st demention
array[1] = Array.new(prim.reverse)    # ading in 2nd dimention

for i in 0..(array[0].size) - 1
  #for j in 0..(array[1].size)-1 do

  print array[0][i], "===>"
  print array[1][i]
  puts
  #end

end
