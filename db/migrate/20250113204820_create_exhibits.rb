class CreateExhibits < ActiveRecord::Migration[7.1]
  def change
    create_table :exhibits do |t|
      t.string :name
      t.string :description
      t.date :date
      t.string :binder

      t.timestamps
    end
  end
end
