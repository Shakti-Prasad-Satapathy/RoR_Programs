=begin
# 
# @description : This will create a new account for a company by taking company name n number 
#                of shairs and unit share prise as input from user
# @purpose : create new company account
#
=end
def create_account(name, number_of_Share, unit_Share_Price)
  puts "create_account"
  tempHash = { "company" => [{
    "name": name,
    "Number_of_Share": number_of_Share,
    "unit_Share_Price": unit_Share_Price,
  }] }
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(tempHash))
    f.close()
  end
end

=begin
# 
# @description : This will add more companies by taking company name  number of shairs and
#                unit share prise as input from user
# @purpose : add new company account
#
=end

def add_to_file
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)
  puts "please enter the company name name"
  new_name = gets.chomp
  puts "please enter Number_of_Share"
  new_Number_of_Share = gets.to_i
  puts "please enter unit_Share_Price"
  new_unit_Share_Price = gets.to_i

  tempHash = {

    "name": new_name,
    "Number_of_Share": new_Number_of_Share,
    "unit_Share_Price": new_unit_Share_Price,
  }
  data_hash["company"] << tempHash
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(data_hash))
  end
end

=begin
# 
# @description : This will maintain the share values and and add the share amount if you have buy any shares
# @purpose : View Patients associated to the clinique (JSON File)
#
=end

def buy_shares
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)
  puts "Please enter the company name of which you wants to buy"
  name = gets.chomp
  puts "Please enter the number of shares you wants to buy"
  buy = gets.chomp.to_i
  i = 0
  while (data_hash["company"][i] != nil)
    if name == data_hash["company"][i]["name"]
      data_hash["company"][i]["Number_of_Share"] = ((data_hash["company"][i]["Number_of_Share"]) + buy).to_i
    end
    i = i + 1
  end
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(data_hash))
    f.close()
  end
end

=begin
# 
# @description : This will maintain the share values and and deduct the share amount if you have sell any shares
# @purpose : View Patients associated to the clinique (JSON File)
#
=end

def sell_shares
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)
  puts "Please enter the company name of which you wants to sell"
  name = gets.chomp
  puts "Please enter the number of shares you wants to sell"
  sell = gets.to_i
  i = 0
  while data_hash["company"][i] != nil
    puts "<name> #{name}"
    if name == data_hash["company"][i]["name"]
      if (data_hash["company"][i]["Number_of_Share"]).to_i >= sell
        data_hash["company"][i]["Number_of_Share"] = ((data_hash["company"][i]["Number_of_Share"]).to_i - sell).to_i
      else
        puts "infufficient numbers of share "
      end
    end
    i = i + 1
  end
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(data_hash))
    #f.close()
  end
end

=begin
# 
# @description : This will Display the patients details by taking its name or id as an input
# @purpose : View Patients associated to the clinique (JSON File)
#
=end

def display
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)
  puts data_hash
end
