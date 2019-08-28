=begin
# 
# @Purpose : practice
# @overview : A program to Take User Name as Input. Ensure UserName has min 3 char Replace <<UserName>> with the proper name
#			  Print the String with User Name  
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end

name = ""
puts "Enter any string"
name = gets
if (name.length >= 3)
  name = ""
  puts "Enter new name which you wants to replace"
  name = gets
  puts "Your replaced name is: ", name
else
  puts "tyry again... NOTE: string should have atlist 3 charectors"
end
