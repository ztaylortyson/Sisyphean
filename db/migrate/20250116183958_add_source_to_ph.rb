class AddSourceToPh < ActiveRecord::Migration[7.1]
  def change
      add_column :procedural_histories, :source, :string
  end
end
