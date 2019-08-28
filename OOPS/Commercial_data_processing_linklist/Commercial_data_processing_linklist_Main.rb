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

$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Commercial_data_processing_linklist/"	# loading the path of th eutility class
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/utility/"
require "Utility.rb"	# importing the utility class
require "Commercial_data_processing_linklist_Business.rb" # importing business logic

class Commercial_data_processing
  def initialize()
    @head = Node.new(nil, nil, nil)
  end

  def init()
    puts "please enter the company name name"
    name = gets.chomp
    puts "please enter Number_of_Share"
    number_of_Share = gets.chomp.to_i
    puts "please enter unit_Share_Price"
    unit_Share_Price = gets.chomp.to_i

    create_account(name, number_of_Share, unit_Share_Price)
    flag = 0
    while flag == 0
      puts "press '1' for add more company, '2' for remove anu company"
      option = 0
      option = gets.to_i
      if option == 1
        add_new()
      elsif option == 2
        remove()
      else
        puts "Weong choice"
      end
      puts "type 'exe' for exit else press any key"
      option = gets.chomp
      if option == "exe"
        flag = 1
      end
    end
  end
end

obj = Commercial_data_processing.new()
obj.init()
