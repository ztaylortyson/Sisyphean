class RenameColumn < ActiveRecord::Migration[7.1]
  def change
      rename_column :procedural_histories, :issues_id, :issue_id 
  end
end
