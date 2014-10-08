class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.time :cooking_time
      t.integer :difficulty
      t.time :rest_time
      t.time :preparation_time

      t.timestamps
    end
  end
end
