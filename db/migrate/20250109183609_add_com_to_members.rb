class AddComToMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :commission, :boolean
  end
end
