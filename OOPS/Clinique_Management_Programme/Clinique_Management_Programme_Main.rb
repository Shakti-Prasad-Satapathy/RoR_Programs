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
require "json"
$LOAD_PATH << "/home/admin1/ROR workspace/OOPS/Clinique_Management_Programme/"	# loading the path of th eutility class
require "Clinique_Management_Programme_Business.rb" # importing the business logic  part to execute the processing

class Clinique
  def init
    puts "Enter your choice... '1' for view doctors, '2' for view/add petients" # getting user request to execute user requirement
    option = 0
    option = gets.to_i
    if (option == 1)
      view_Doctor()
    elsif (option == 2)
      puts "please enter '1'to add Patients, '0' for search  patient"
      edit_patients = gets.to_i
      if edit_patients == 1
        add_Patient()
      elsif edit_patients == 0
        view_Patient()
      else
        puts "Sorry... You have entered wrong choice"
      end
    else
      puts "Sorry... You have entered wrong choice"
    end
  end
end

obj = Clinique.new()
obj.init()
