require 'csv'

class FixDate
	def initialize
		@members = CSV.read("members_data.csv", headers: true)
	end
	def display_row_eleven
		count = 1
		@members.each do |row|
			puts "#{row[11].split('-')[0]} #{count} #{row[0]} #{row[1]}"
		count += 1	
		end
	end
end
obj = FixDate.new 
obj.display_row_eleven

class ExtractPagaList
	attr_reader :paga_array, :paga_hash
	def initialize
		@paga_list = CSV.read("paga_list.csv", headers: true)
		@paga_array = []
		@paga_hash = {}
		@paga_list.each do |i|
			@paga_hash[:psa_id] = i[0]
			@paga_hash[:lname] = i[2]
			@paga_hash[:fname] = i[3]
			@paga_hash[:address] = i[4]
			@paga_hash[:city] = i[5]
			@paga_hash[:state] = i[6]
			@paga_hash[:zip] = i[7]
			@paga_hash[:phone] = i[8]
			@paga_hash[:email] = i[9]

			@paga_array << @paga_hash
		end
	end
end
# paga_obj = ExtractPagaList.new

class ExtractEeList
	attr_reader :ee_hash, :ee_array
	def initialize
		@ee_list = CSV.read("employee_list_z.csv", headers: false)
		@ee_array = []
		@ee_hash = {}

		@ee_list.each do |i|
			@ee_hash[:ee_id] = i[0]
			@ee_hash[:full_name] = i[1]
			@ee_hash[:job_title] = i[2]
			@ee_hash[:doh] = i[3]
			@ee_hash[:dod] = i[4]
			@ee_hash[:psa_id] = i[5]

			@ee_array << @ee_hash
		end
	end
end
# ee_obj = ExtractEeList.new
#p obj.ee_array

class SpawnNewList
	attr_accessor :psa_id
	def initialize(psa_id:,
		lname:,
		fname:,
		address:,
		city:,
		state:,
		zip:,
		phone:,
		email:,
		ee_id:,
		full_name:,
		job_title:,
		doh:,
		dod:)
		@psa_id = psa_id
		@lname = lname 
		@fname = fname 
		@address = address
		@city = city
		@state = state 
		@phone = phone 
		@email = email 
		@ee_list = ee_list
		@full_name = full_name
		@job_title = job_title
		@doh = doh 
		@dod = dod
	end
end

class TwoHash
	def initialize(hash1, hash2)
		@hash1 = hash1
		@hash2 = hash2
	end
	def find_psa_id_key
		@hash1.each do |k1, v1|
			@hash2.each do |k2, v2|
				if k1 == k2
					puts "#{v1[0]} #{v1[1]} #{v1[2]}"
					puts "#{v2[0]} #{v2[1]} #{v2[2]}"
					puts " = = = = = = = = = = = = "
				end
			end
		end
	end
end
# obj = TwoHash.new(ee_obj.ee_array, paga_obj.paga_array)
# puts " * "
# obj.find_psa_id_key



