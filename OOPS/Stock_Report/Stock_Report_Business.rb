=begin
# 
# @description : This will add more  company to an existing json file
# @purpose : adding more company details
#
=end

def stock_Report
  require "json"

  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json")
  data_hash = JSON.parse(file)
  # appending more data to the data_hash
  data_hash["items"] << { "name": "Johnsons", "Number_of_Share": 120, "unit_Share_Price": 450 }

  File.open("/home/admin1/ROR workspace/OOPS/JSON/Stock_Report.json", "w") do |f|
    f.puts JSON.pretty_generate(data_hash)
  end
end
