class CreateProceduralHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :procedural_histories do |t|
      t.date :date
      t.string :event
      t.text :description
      t.integer :roa

      t.timestamps
    end
  end
end
