class CreateDepos < ActiveRecord::Migration[7.1]
  def change
    create_table :depos do |t|
      t.string :deponent
      t.string :title
      t.date :depo_date
      t.string :employed_by
      t.string :job_title
      t.string :doh
      t.string :dod
      t.string :reports_to

      t.timestamps
    end
  end
end
