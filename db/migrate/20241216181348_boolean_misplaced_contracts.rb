class BooleanMisplacedContracts < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :misplace_contract, :boolean, default: false
  end
end
