class AddUnIDedagainToMembers < ActiveRecord::Migration[7.1]
  def change
      add_column :members, :unidentified, :boolean
  end
end
