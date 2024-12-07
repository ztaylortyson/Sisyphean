module PrismHelper

	def gmember(contract)
		puts " . . . hello from PrismHelper module." 
		puts "Ready to work."
		if contract.member_id
			return @member = Member.find(contract.member_id)
		end
	end


	

end
