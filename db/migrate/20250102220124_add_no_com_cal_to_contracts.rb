class AddNoComCalToContracts < ActiveRecord::Migration[7.1]
  def change
    add_column :contracts, :nocomcal, :boolean
    add_column :contracts, :er_sign, :boolean
    add_column :contracts, :mention_pack, :boolean
  end
end
