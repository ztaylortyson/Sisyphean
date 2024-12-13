class ContractMisplacedOnMembers < ActiveRecord::Migration[7.1]
  def change
    add_column :members, :contract_misplaced, :boolean, default: false
  end
end
