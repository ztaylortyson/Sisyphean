class AddStatementToFacts < ActiveRecord::Migration[7.1]
  def change
    add_column :facts, :statement, :text
  end
end
