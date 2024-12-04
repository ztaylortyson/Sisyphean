class PsaToStr < ActiveRecord::Migration[7.1]
  def change
    change_column :members, :psa_id, :string
  end
end
