class CreatePleadings < ActiveRecord::Migration[7.1]
  def change
    create_table :pleadings do |t|
      t.integer :roa
      t.date :date_filed
      t.string :title
      t.integer :filed_by

      t.timestamps
    end
  end
end
