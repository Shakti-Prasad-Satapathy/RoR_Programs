=begin
# 
# @description : This method will helpes to aadd the company details (JSON file content) to
#                the queue
# @purpose : to view the doctor and take an assignment
# @param {value} : this contains the company details
=end

def add_to_queue(value)
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)
  current_node = @head
  while current_node.next != nil
    current_node = current_node.next
  end
  current_node.next = Node.new(current_node, value, nil)
  data_hash["company"] << current_node.next.value
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(data_hash))
  end
end

=begin
# 
# @description : After taking user option, this method will remove the company details by 
#                taking the company name as input
# @purpose : remove the company details
#
=end

def remove()
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
  data_hash = JSON.parse(file)

  puts "Please enter the company name which you wants to remove"
  name = gets.chomp
  i = 0
  x = 0
  while (data_hash["company"][i] != nil)
    current_node = @head
    current_node = Node.new(current_node.prev, data_hash["company"][i], nil)
    if name == (data_hash["company"][i]["name"])
      current_node = current_node.next
    else
      file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json")
      data_hash = JSON.parse(file)
      if x == 0
        data_hash["company"] = current_node.value
        x = 1
      else
        data_hash["company"] << current_node.value
      end
    end
    i = i + 1
  end
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Commercial_data_processing.json", "w") do |f|
    f.write(JSON.pretty_generate(data_hash))
  end
end

=begin
# 
# @description : After taking user option, this method will add new comapny and there share details
# @purpose : this method will add new comapny
#
=end

def add_new()
  puts "please enter the company name name"
  name = gets.chomp
  puts "please enter Number_of_Share"
  number_of_Share = gets.chomp.to_i
  puts "please enter unit_Share_Price"
  unit_Share_Price = gets.chomp.to_i
  tempHash = {
    "name": name,
    "Number_of_Share": number_of_Share,
    "unit_Share_Price": unit_Share_Price,
  }
  add_to_queue(tempHash)
end

=begin
# 
# @description : This method will create a company and its details for the first time by 
#                getting inputs by the users. This method will execuated 1st after running the code.
# @purpose : Create 1st account
# @param {name} : this contains the company name
# @param {number_of_Share} : this contains the number of shares that company holds
# @param {unit_Share_Price} : this contains the unit share prise of that company's share
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
  end
end
