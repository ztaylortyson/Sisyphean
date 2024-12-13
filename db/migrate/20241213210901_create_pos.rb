class CreatePos < ActiveRecord::Migration[7.1]
  def change
    create_table :pos do |t|
      t.date :date
      t.string :title
      t.boolean :documents

      t.timestamps
    end
  end
end
