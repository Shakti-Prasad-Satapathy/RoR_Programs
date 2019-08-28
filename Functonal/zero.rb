=begin
# 
# @Purpose : practice
# @overview : A program with cubic running time. Read in N integers and counts the   number of triples that sum to exactly 0
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

nums = Array[-1, -2, 3, 5, -3, -4]
sum = 0.to_i
for i in 0..nums.size
  for j in 0..nums.size
    for k in 0..nums.size
      if (nums[i] != nums[j] && nums[i] != nums[k] && nums[k] != nums[j])
        sum = nums[i].to_i + nums[j].to_i + nums[k].to_i
        if (sum == 0)
          puts "the 3 numbers are #{nums[i]}  #{nums[j]}  #{nums[k]}"
        end
      end
    end
  end
end
