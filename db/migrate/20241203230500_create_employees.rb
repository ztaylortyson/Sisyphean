class CreateEmployees < ActiveRecord::Migration[7.1]
  def change
    create_table :employees do |t|
      t.integer :employee_id
      t.string :full_name
      t.string :job_title
      t.date :doh
      t.date :dod
      t.string :psa_id

      t.timestamps
    end
  end
end
