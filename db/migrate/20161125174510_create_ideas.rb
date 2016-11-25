class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :idea_name
      t.text :idea_description
      t.text :additional_info
      t.integer :platform_id
      t.integer :role_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
