=begin
# 
# @Purpose : practice
# @overview : A program to find total share cost from JSON, read the JSON file, then output
#             output the total Share prise then add new key pairs to the existing JSON file
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
require "json"
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Stock_Report/"	# loading the path of th eutility class
require "Stock_Report_Business.rb"

file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
data_hash = JSON.parse(file)

stock_Report()

total_share_for_first = (data_hash["items"][0]["Number_of_Share"]) * (data_hash["items"][0]["unit_Share_Price"])
total_share_for_second = (data_hash["items"][1]["Number_of_Share"]) * (data_hash["items"][1]["unit_Share_Price"])
total_share_for_third = (data_hash["items"][2]["Number_of_Share"]) * (data_hash["items"][2]["unit_Share_Price"])
total_share_for_fourth = (data_hash["items"][3]["Number_of_Share"]) * (data_hash["items"][3]["unit_Share_Price"])

puts total_share_for_first
puts total_share_for_second
puts total_share_for_third
puts total_share_for_fourth
