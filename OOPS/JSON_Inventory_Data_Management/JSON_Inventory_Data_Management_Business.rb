=begin
# 
# @description : this will read the json file and store the parsed json file in data-hash
# @purpose : retrive (access) the jsonfile
#
=end

def inventory()
  require "json"
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/JSON_Inventory_Data_Management.json")
  data_hash = JSON.parse(file)
  return data_hash
end
