class ChangeTimeFormatOfRecipes < ActiveRecord::Migration
  def up
	change_column :recipes, :preparation_time, :integer
	change_column :recipes, :cooking_time, :integer
	change_column :recipes, :rest_time, :integer
  end

  def down
	change_column :recipes, :preparation_time, :time
	change_column :recipes, :cooking_time, :time
	change_column :recipes, :rest_time, :time
  end

end
