class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :skill_name

      t.timestamps null: false
    end
  end
end
