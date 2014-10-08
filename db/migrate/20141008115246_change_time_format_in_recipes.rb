class ChangeTimeFormatInRecipes < ActiveRecord::Migration
  def up
	change_column :recipes, :preparation_time, :time
  end
  
  def down
	change_column :recipes, :preparation_time, :integer
  end
end
