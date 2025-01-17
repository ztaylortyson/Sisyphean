class AddReviewedToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :reviewed, :boolean
    add_column :members, :valid_contract, :integer 
  end
end
