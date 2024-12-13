class AddInitialsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :initials, :string
  end
end
