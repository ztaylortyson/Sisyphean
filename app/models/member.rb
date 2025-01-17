class Member < ApplicationRecord

	validates :doh, presence: :true

	has_many :contracts



	def full_name
		"#{lname}, #{fname}"
	end


end
