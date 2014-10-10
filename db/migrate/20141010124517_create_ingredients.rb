class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :substance, null: false
      t.decimal :quantity, null: false, default: 0
      t.string :quantity_unit, null: false, default: 'tablespoon'
      t.integer :recipe_id, null: false

      t.timestamps
    end
  end
end
