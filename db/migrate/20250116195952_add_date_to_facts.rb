class AddDateToFacts < ActiveRecord::Migration[7.1]
  def change
    add_column :facts, :date, :date 
    
  end
end
