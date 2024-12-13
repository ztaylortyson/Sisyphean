class CreateVerifications < ActiveRecord::Migration[7.1]
  def change
    create_table :verifications do |t|
      t.date :date
      t.string :title
      t.string :signed_by

      t.timestamps
    end
  end
end
