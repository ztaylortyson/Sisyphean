class AddIssueIdToPh < ActiveRecord::Migration[7.1]
  def change
    remove_column :issues, :procedural_history_id, :bigint
    add_column :procedural_histories, :issues_id, :integer
  end
end
