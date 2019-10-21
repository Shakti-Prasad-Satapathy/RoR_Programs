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
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Commercial_data_processing/"	# loading the path of th eutility class
require "Commercial_data_processing_Business.rb"

class Xxxxxxxx
  def init
    puts "please enter the company name"
    name = gets.chomp
    puts "please enter Number_of_Share"
    number_of_Share = gets.chomp.to_i
    puts "please enter unit_Share_Price"
    unit_Share_Price = gets.chomp.to_i

=begin
# 
# @description : This will create a new account for a company by taking company name n number 
#                of shairs and unit share prise as input from user
# @purpose : create new company account
#
=end

    create_account(name, number_of_Share, unit_Share_Price) #calling the create account method written in business logic
    flag = 0
    while flag == 0 # loop for continue the process or access tprocesses for multyple time unless user wants to exit
      puts "press '1' for add more company, '2' for buy shares 3 for sale shares, '9' for display the file"
      option = 0
      option = gets.to_i
      if option == 1
        add_to_file()
      elsif option == 2
        buy_shares()
      elsif option == 3
        sell_shares()
      elsif option == 9
        display()
      else
        puts "Weong choice"
      end
      puts "type 'exe' for exit else press any key"
      option = gets.chomp
      if option == "exe"
        flag == 1
      end
    end
  end
end

obj = Xxxxxxxx.new()
obj.init()
