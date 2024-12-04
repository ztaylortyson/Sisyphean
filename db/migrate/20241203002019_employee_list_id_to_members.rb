class EmployeeListIdToMembers < ActiveRecord::Migration[7.1]
  def change
      add_column :members, :employee_list_id, :string
  end
end
