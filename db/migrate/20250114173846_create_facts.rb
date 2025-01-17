class CreateFacts < ActiveRecord::Migration[7.1]
  def change
    create_table :facts do |t|
      t.integer :bates
      t.string :source
      t.integer :page
      t.integer :num
      t.integer :lns

      t.timestamps
    end
  end
end
