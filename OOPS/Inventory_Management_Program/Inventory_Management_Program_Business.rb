=begin
# 
# @description : This will add company to the json file
# @purpose : add new company
#
=end

def add_Company
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
  data_hash = JSON.parse(file)
  data_hash["items"] << { "name": "Johnsons", "Number_of_Share": 120, "unit_Share_Price": 450 }
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
    f.puts JSON.pretty_generate(data_hash)
  end
end

=begin
# 
# @description : This will remove either the company name or number of shares or unit share
#                prise or remove total company details
# @purpose : distribute and display the cards
#
=end

def remove()
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
  data_hash = JSON.parse(file)
  puts "enter the company name"
  name = ""
  name = gets.chomp
  i = 0
  while data_hash["items"][i] != nil # travers untill the last company details
    if name == data_hash["items"][i]["name"]
      puts "press '1' for delete name, '2' for Number_of_Share, '3' for unit_Share_Price and 4 for remove a company all details"
      edit_option = 0
      edit_option = gets.to_i
      if edit_option == 4
        data_hash["items"].delete(data_hash["items"][i])
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      end
      if edit_option == 1
        data_hash["items"][i].delete("name")
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      elsif edit_option == 2
        data_hash["items"][i].delete("Number_of_Share")
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      elsif edit_option == 3
        data_hash["items"][i].delete("unit_Share_Price")
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      end
    end
    i = i + 1
  end
end

=begin
# 
# @description : This will edit either the company name or number of shares or unit share
#                prise details
# @purpose : distribute and display the cards
#
=end

def edit()
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
  data_hash = JSON.parse(file)
  puts "enter the company name in which you wants to edit"
  name = ""
  name = gets.chomp
  i = 0
  while data_hash["items"][i] != nil # travers for all sets of company
    if name == data_hash["items"][i]["name"]
      puts "press '1' for edit name, '2' for Number_of_Share and '3' for unit_Share_Price"
      edit_option = 0
      edit_option = gets.to_i
      if edit_option == 1
        puts "Enter new input"
        input = gets.chomp
        data_hash["items"][i]["name"] = input
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      elsif edit_option == 2
        puts "Enter new input"
        input = gets.chomp.to_i
        data_hash["items"][i]["Number_of_Share"] = input
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      elsif edit_option == 3
        puts "Enter new input"
        input = gets.chomp.to_i
        data_hash["items"][i]["unit_Share_Price"] = input
        File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
          f.puts JSON.pretty_generate(data_hash)
        end
      end
    end
    i = i + 1
  end
end
