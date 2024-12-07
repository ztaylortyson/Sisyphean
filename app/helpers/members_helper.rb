module MembersHelper

	def get_weeks(m)
		if m.dod.nil?
			m.dod = Date.today
			return ((m.dod - m.doh).to_f / 7).ceil
		else
			return ((m.dod - m.doh).to_f / 7).ceil
		end	
	end

	def get_first_contract(m)
		if !m.contracts.first.nil?
			m.contracts.first.ee_signed
		end
	end

	def contract_days_after_hiring(m)
		if !m.contracts.first.nil?
			
			end_date = m.contracts.first.ee_signed
			start_date = m.doh

		if !end_date.nil? && !start_date.nil?
			if end_date == start_date
				return 'Start Date'
			else
				if ((end_date - start_date).to_f / 7).ceil > 1
					return ((end_date - start_date).to_f / 7).ceil
				end
			end
		end 

			

		end
	end




	

end
