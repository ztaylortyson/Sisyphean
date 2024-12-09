module ContractsHelper

	def get_member_name(member_id)
		if member_id
			m = Member.find(member_id)
			return "#{m.lname}, #{m.fname}"
		end
	end
	def get_member_job_title(member_id)
		if member_id
			m = Member.find(member_id)
			return m.job_title
		end
	end

end
