class CreateDocumentDumps < ActiveRecord::Migration[7.1]
  def change
    create_table :document_dumps do |t|
      t.date :date
      t.string :title

      t.timestamps
    end
  end
end
