class CreatePlatfroms < ActiveRecord::Migration
  def change
    create_table :platfroms do |t|
      t.string :platform_name

      t.timestamps null: false
    end
  end
end
