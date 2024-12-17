class Import
	def initialize
		Dir.chdir(Rails.root.join("FOLDER", "CSV"))
	end

	def get_members
		members = CSV.read("members_data.csv", headers: true)
		members.each do |m|
			Member.create!(
				lname: m[0],
				fname: m[1],
				email: m[3],
				phone: m[2],
				address: m[4],
				city: m[5],
				state: m[6],
				zip: m[7],
				client: m[8],
				employee_id: m[9],
				job_title: m[10],
				doh: m[11],
				dod: m[12],
				notes: m[13],
				psa_id: m[14],
				employee_list_id: m[15])
		end
	end

	def get_contracts
		contracts = CSV.read("contracts_data.csv", headers: true)
		contracts.each do |c|
			Contract.create!(
				source: c[0], 
				kind: c[1],
				year: c[2],
				member_id: c[3],
				notes: c[4],
				ee_sign: c[5],
				ee_signed: c[6],
				hr_signed: c[7],
				gsm_signed: c[8],
				gm_signed: c[9],
				dir_op_signed: c[10],
				effective_date: c[11],
				draw: c[12],
				salary: c[13],
				duplicate: c[14])
		end
		
	end
end

puts "running seed file"
obj = Import.new
puts "created obj for import"

# obj.get_members
# puts "members added."

obj.get_contracts

#puts "got contracts"
puts "done."




# members = Member.all 
# members.destroy_all
# puts "all members destroyed."


# def add_ee_list_info
# 	@members = Member.all 
# 	@members.each do |i|
# 		puts i.psa_id
# 	end
# end

# def ee_list_info
# 	Dir.chdir(Rails.root.join("FOLDER", "CSV"))
# 	rows = CSV.read("employee_list_z.csv", headers: false)
# 	rows.each do |i|
# 		@member = Member.find_by(psa_id: i[5])

# 		if @member 
# 			puts "found member #{@member.id}"

# 			if i[4] == "opt out"
# 				puts "found opt out #{i[o]} #{i[1]}. skip"
# 				next
# 			elsif
# 				if i[4] == "Active"
# 					puts "found dod is Active #{i[0]} #{i[1]}"
# 					@member.update!(employee_list_id: i[0],
# 						job_title:i[2],
# 						doh:Date.strptime(i[3], "%m/%d/%Y"))
# 					@member.save
# 				else
# 					if i[3] == "syed"
# 						puts "getting syed"
# 						@member.update!(employee_list_id: i[0],
# 							job_title:i[2],
# 							dod:Date.strptime(i[4], "%m/%d/%Y"))
# 						@member.save
# 					else
# 					puts "should get all columns #{i[0]} #{i[1]}"
# 						@member.update!(employee_list_id: i[0],
# 							job_title:i[2],
# 							doh:Date.strptime(i[3], "%m/%d/%Y"),
# 							dod:Date.strptime(i[4], "%m/%d/%Y"))
# 						@member.save
# 					end
# 				end
# 			else
# 				puts "Error.  #{i[0]} #{i[1]}"
# 			end
# 		end

# 			# if i[4] == "Active" || i[4] == "opt out"
# 			# 	puts "found member #{i[0]} #{i[1]} is Active or opt out #{@member.inspect}"
# 			# 		@member.update!(employee_list_id:i[0],
# 			# 			job_title: i[2],
# 			# 			doh:Date.strptime(i[3], "%m/%d/%Y"))
# 			# 		@member.save
				
# 			# else
# 			# 	if i[3] == "opt out"
# 			# 	puts "found ee #{i[0]} #{i[1]} opt out #{@member.inspect}"
# 			# 		@member.update!(employee_list_id: i[0],
# 			# 			job_title:i[2])
# 			# 		@member.save
# 			# 	else
# 			# 		begin
# 			# 		@member.update!(employee_list_id: i[0],
# 			# 			job_title:i[2],
# 			# 			doh:Date.strptime(i[3], "%m/%d/%Y"),
# 			# 			dod:Date.strptime(i[4], "%m/%d/%Y"))
# 			# 		@member.save
# 			# 		rescue
# 			# 			puts "error #{i[0]} #{i[1]}" 
# 			# 		end
# 			# 	end
# 			# end
# 	end
# end

# Date.strptime(date_string, "%m/%d/%Y")
#add_ee_list_info
# ee_list_info
# puts "done."
# puts 











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