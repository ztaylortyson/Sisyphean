class CreateContracts < ActiveRecord::Migration[7.1]
  def change
    create_table :contracts do |t|
      t.string :source
      t.string :kind
      t.string :year
      t.integer :member_id
      t.text :notes
      t.boolean :ee_sign
      t.date :ee_signed
      t.date :hr_signed
      t.date :gsm_signed
      t.date :gm_signed
      t.date :dir_op_signed
      t.date :effective_date
      t.boolean :draw
      t.boolean :salary
      t.boolean :hourly
      t.boolean :duplicate

      t.timestamps
    end
  end
end
