class AddComToContracts < ActiveRecord::Migration[7.1]
  def change
    add_column :contracts, :commissions, :boolean
  end
end
