class Contract < ApplicationRecord
  has_one_attached :file
  belongs_to :Member, optional: true
  #validates :source, presence: true, uniqueness: true
end
