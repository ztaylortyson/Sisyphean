class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :lname
      t.string :fname
      t.string :phone
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.boolean :client
      t.integer :employee_id
      t.string :job_title
      t.date :doh
      t.date :dod
      t.text :notes
      t.integer :psa_id

      t.timestamps
    end
  end
end
