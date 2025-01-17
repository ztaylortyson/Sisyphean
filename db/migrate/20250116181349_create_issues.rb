class CreateIssues < ActiveRecord::Migration[7.1]
  def change
    create_table :issues do |t|
      t.string :statement
      t.references :procedural_history, null: false, foreign_key: true

      t.timestamps
    end
  end
end
