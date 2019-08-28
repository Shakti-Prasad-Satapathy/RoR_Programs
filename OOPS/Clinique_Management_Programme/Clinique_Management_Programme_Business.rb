=begin
# 
# @Purpose : practice
# @overview : This programme is used to manage a list of Doctors by Name, Id, Specialization
#             and Availability (AM,  PM or both) and also manages the list of patients manages Patients 
#             by Name, ID, Mobile Number and Age associated with the Clinique. The Program allows users 
#             to search Doctor by name, id, Specialization or Availability. Also the programs allows 
#             users to search patient by name, mobile number or id. The programs allows patients to take 
#             appointment with the doctor. This Part Contains only main logics
# @author : Shakti Prasad Satapathy <shaktiprasadsatapathy96@gmail.com>
# @since : 6th-aug-2019
#
=end
###########################################################################################
=begin
# 
# @description : After taking user option, this method will view all doctors name, 
#                specialization, there id and and availebility, then again request for 
#                apointment, then fix an apointment by taking Doctors's name or id by input
# @purpose : to view the doctor and take an assignment
#
=end
def view_Doctor
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Clinique_Management_Programme_Doctors.json") # Reading the json file
  data_hash = JSON.parse(file)  # parsing the json file to  the variable data_hash
  puts data_hash["doctors"]
  puts "Please Enter Doctor's first name or Id for take apointment"
  name = gets.chomp

  i = 0
  while data_hash["doctors"][i] != nil
    if name == data_hash["doctors"][i]["name"] || name == data_hash["doctors"][i]["id"] && data_hash["doctors"][i]["availability"] <= 5
      data_hash["doctors"][i]["availability"] = data_hash["doctors"][i]["availability"] + 1
      puts "Congrats You have successfully resister fo meet"
    else
      puts "You have entered wrong choice or Doctor is not available"
    end
    File.open("/home/admin1/ROR workspace/OOPS/JSON/Clinique_Management_Programme_Doctors.json", "w") do |f|
      f.puts JSON.pretty_generate(data_hash)  #writing on the json file
    end

    i = i + 1
  end
end

=begin
# 
# @description : This part will add new patient to the clinique by taking details by user
# @purpose : Add Patient new to the clinique (JSON File)
#
=end

def add_Patient
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Clinique_Management_Programme_Patient.json")
  data_hash = JSON.parse(file)
  #puts data_hash

  puts "please enter the patient's name name"
  new_name = gets.chomp
  puts "please enter patient's ID"
  id = gets.to_i
  puts "please enter patient's mobile no"
  mobile_number = gets.to_i
  puts "please enter patient's age"
  age = gets.to_i
  tempHash = { #constructing a temp array to store patients details

    "name": new_name,
    "id": id,
    "mobile_number": mobile_number,
    "age": age,
  }
  data_hash["patients"] << tempHash # adding the temp array to the json file
  File.open("/home/admin1/ROR workspace/OOPS/JSON/Clinique_Management_Programme_Patient.json", "w") do |f|
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

def view_Patient
  file = File.read("/home/admin1/ROR workspace/OOPS/JSON/Clinique_Management_Programme_Patient.json")
  data_hash = JSON.parse(file)
  puts "Please Enter Doctor's first name or Id "
  name = gets.chomp
  i = 0
  while data_hash["patients"][i] != nil
    if name == data_hash["patients"][i]["name"] || name == data_hash["patients"][i]["id"]
      puts data_hash["patients"][i]
    end
    i = i + 1
  end
end
