=begin
# 
# @Purpose : practice
# @overview : A program to create Inventory Object from JSON, read the JSON file, then output
#             output the JSON String
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/JSON_Inventory_Data_Management/"	# loading the path of th eutility class
require "JSON_Inventory_Data_Management_Business.rb"
data_hash = inventory() # data_hash contains the json file key and values
print data_hash.keys
puts "  "
print data_hash["items"]
puts ""
