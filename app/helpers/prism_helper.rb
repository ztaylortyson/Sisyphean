module PrismHelper

	def gmember(contract)
		puts " . . . hello from PrismHelper module." 
		puts "Ready to work."
		if contract.member_id
			return @member = Member.find(contract.member_id)
		end
	end

	def weeks(member)

		if member.dod.nil?
			return ((Date.today - member.doh).to_f/7).ceil
		else 
			return ((member.dod - member.doh).to_i/7).ceil
		end

	end
	

end
