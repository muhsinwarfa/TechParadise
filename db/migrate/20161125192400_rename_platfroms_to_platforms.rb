class RenamePlatfromsToPlatforms < ActiveRecord::Migration
  def up
  	rename_table :platfroms , :platforms
  end

  def down
  	rename_table :platforms , :platfroms 
  end
end
