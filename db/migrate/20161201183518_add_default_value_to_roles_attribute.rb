class AddDefaultValueToRolesAttribute < ActiveRecord::Migration
    def up
      change_column :roles, :filled, :boolean, :default => false
    end
  
    def down
      change_column :roles, :filled, :boolean, :default => nil
    end
    
end
