class Pleading < ApplicationRecord
  has_one_attached :file

  enum filed_by: ["Plaintiff", "Defendant"] 

end
