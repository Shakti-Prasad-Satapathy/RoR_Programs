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
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Inventory_Management_Program/"

class Manage
  def manager
    require "Inventory_Management_Program_Business.rb"
    puts "Enter your choice... '1' for add, '2' for remove and '3' for edit"
    option = 0
    option = gets.to_i
    if (option == 1)
      add_Company()
    elsif (option == 2)
      remove()
    elsif (option == 3)
      edit()
    else
      puts "Sorry... You have entered wrong choice"
    end
    file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
    data_hash = JSON.parse(file)

    for i in 0..(data_hash["items"].size) - 1 # travers all company details
      total_share = (data_hash["items"][i]["Number_of_Share"]) * (data_hash["items"][i]["unit_Share_Price"])

      puts "total share for #{data_hash["items"][i]["name"]} is:  #{total_share} "
    end
  end
end

obj = Manage.new()
obj.manager()
