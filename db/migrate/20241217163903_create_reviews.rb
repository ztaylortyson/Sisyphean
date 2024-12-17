class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :discovery, null: false, foreign_key: true
      t.string :question
      t.integer :coa
      t.integer :issue
      t.string :wswk
      t.text :note

      t.timestamps
    end
  end
end
