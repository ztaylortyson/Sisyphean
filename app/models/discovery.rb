class Discovery < ApplicationRecord
	has_one_attached :file

	def get_title
		"#{self.kind} #{self.set}"
	end

end
