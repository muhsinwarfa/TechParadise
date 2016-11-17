class AddColumnsToIdea < ActiveRecord::Migration
  def change
    add_column :ideas, :idea_name, :string
    add_column :ideas, :idea_description, :string
    add_column :ideas, :additional_info, :string
    add_column :ideas, :platform_id, :integer
    add_column :ideas, :role_id, :integer
    add_column :ideas, :user_id, :integer
  end
end
