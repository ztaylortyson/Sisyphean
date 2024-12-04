class MembersImport
	def initialize
		Dir.chdir(Rails.root.join("FOLDER", "CSV"))
	end

	def launch
		members = CSV.read("paga_list.csv", headers: true)
		members.each do |m|
			Member.create!(
				lname: m[2],
				fname: m[3],
				email: m[9],
				phone: m[8],
				address: m[4],
				city: m[5],
				state: m[6],
				zip: m[7],
				psa_id: m[0])
		end
	end
end
# members = Member.all 
# members.destroy_all
# puts "all members destroyed."
# obj = MembersImport.new
# obj.launch
# puts "members added."

# def add_ee_list_info
# 	@members = Member.all 
# 	@members.each do |i|
# 		puts i.psa_id
# 	end
# end

def ee_list_info
	Dir.chdir(Rails.root.join("FOLDER", "CSV"))
	rows = CSV.read("employee_list_z.csv", headers: false)
	rows.each do |i|
		@member = Member.find_by(psa_id: i[5])

		if @member 
			puts "found member #{@member.id}"

			if i[4] == "opt out"
				puts "found opt out #{i[o]} #{i[1]}. skip"
				next
			elsif
				if i[4] == "Active"
					puts "found dod is Active #{i[0]} #{i[1]}"
					@member.update!(employee_list_id: i[0],
						job_title:i[2],
						doh:Date.strptime(i[3], "%m/%d/%Y"))
					@member.save
				else
					if i[3] == "syed"
						puts "getting syed"
						@member.update!(employee_list_id: i[0],
							job_title:i[2],
							dod:Date.strptime(i[4], "%m/%d/%Y"))
						@member.save
					else
					puts "should get all columns #{i[0]} #{i[1]}"
						@member.update!(employee_list_id: i[0],
							job_title:i[2],
							doh:Date.strptime(i[3], "%m/%d/%Y"),
							dod:Date.strptime(i[4], "%m/%d/%Y"))
						@member.save
					end
				end
			else
				puts "Error.  #{i[0]} #{i[1]}"
			end
		end

			# if i[4] == "Active" || i[4] == "opt out"
			# 	puts "found member #{i[0]} #{i[1]} is Active or opt out #{@member.inspect}"
			# 		@member.update!(employee_list_id:i[0],
			# 			job_title: i[2],
			# 			doh:Date.strptime(i[3], "%m/%d/%Y"))
			# 		@member.save
				
			# else
			# 	if i[3] == "opt out"
			# 	puts "found ee #{i[0]} #{i[1]} opt out #{@member.inspect}"
			# 		@member.update!(employee_list_id: i[0],
			# 			job_title:i[2])
			# 		@member.save
			# 	else
			# 		begin
			# 		@member.update!(employee_list_id: i[0],
			# 			job_title:i[2],
			# 			doh:Date.strptime(i[3], "%m/%d/%Y"),
			# 			dod:Date.strptime(i[4], "%m/%d/%Y"))
			# 		@member.save
			# 		rescue
			# 			puts "error #{i[0]} #{i[1]}" 
			# 		end
			# 	end
			# end
	end
	
end
# Date.strptime(date_string, "%m/%d/%Y")
#add_ee_list_info
ee_list_info
puts "done."
puts 











# class EmployeeList
# 	def initialize
# 		Dir.chdir(Rails.root.join("FOLDER", "CSV"))
# 	end
# 	def launch
# 		foo = CSV.read("employee_list_z.csv", headers: false)
# 		count = 1
# 		foo.each do |i|
# 			regex = /\d+\/\d+\/\d+/
# 			if i[3].match?(regex) and i[4].match?(regex)
# 				begin
# 					obj = Date.strptime(i[3], "%m/%d/%Y")
# 					Employee.create!(
# 						employee_id:i[0], 
# 						full_name:i[1], 
# 						job_title:i[2], 
# 						doh:Date.strptime(i[3], "%m/%d/%Y"), 
# 						dod:Date.strptime(i[4], "%m/%d/%Y"),
# 						psa_id:i[5])
# 				rescue Date::Error => e
# 					puts "Invalid date format: #{e.message}. #{i[0]} #{i[1]}"
# 				end
# 				count += 1
# 			end
# 		end
# 		puts "employees uploaded!"
# 	end
# end
# employees = Employee.all 
# employees.destroy_all
# puts "all employees destroyed."
# obj = EmployeeList.new
# obj.launch





# class ContractsImport
# 	def initialize
# 		Dir.chdir(Rails.root.join("FOLDER", "CSV"))
# 	end

# 	def launch
# 		contracts = CSV.read("contracts_data.csv", headers: true)
# 		contracts.each do |c|
# 			# member = Member.find_or_create_by(id: c[3])
# 			# puts "member is #{member} #{member.id}"
# 			Contract.create!(
# 				source: c[1],
# 				kind: c[2],
# 				year: c[4],
# 				member_id: c[3],
# 				ee_sign: c[16],
# 				draw: c[5],
# 				salary: c[6],
# 				notes: c[11])
# 		end
# 	end
# end
# contracts = Contract.all 
# contracts.destroy_all
# puts "all contracts destroyed."

# contracts_import = ContractsImport.new
# contracts_import.launch
# puts "contracts import finished."


# working with legacy code