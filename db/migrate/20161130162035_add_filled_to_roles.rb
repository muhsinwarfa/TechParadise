class AddFilledToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :filled, :boolean
  end
end
