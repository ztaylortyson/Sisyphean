class Member < ApplicationRecord
	has_many :contracts



	def full_name
		"#{lname}, #{fname}"
	end


end
