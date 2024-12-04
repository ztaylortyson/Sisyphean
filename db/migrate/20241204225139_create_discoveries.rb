class CreateDiscoveries < ActiveRecord::Migration[7.1]
  def change
    create_table :discoveries do |t|
      t.string :kind
      t.string :set
      t.string :verified_by
      t.date :response_date

      t.timestamps
    end
  end
end
