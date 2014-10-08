class ChangeTimeFormatInRecipe < ActiveRecord::Migration
  def up
	change_column :recipes, :preparation_time, :integer
  end
  
  def down
	change_column :recipes, :preparation_time, :time
  end
end
