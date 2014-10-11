require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  def setup
    @substance = "Fish"
    @quantity = 0.7
    @quantity_unit = "kilogram"
  end

  test "should have a quantity greater than zero" do
	  assert_not ingredients(:milk).save
    assert ingredients(:oil).save
  end

# Unnecessary => checked by DB
#  test "should have a substance" do
#    assert true
#  end

# Unnecessary => checked by DB
#  test "should have a quantity name" do
#    assert true
#  end

  test "should have a quantity expressed in quantity_unit" do
    fish = Ingredient.new(:substance => @substance, :quantity => @quantity, :quantity_unit => @quantity_unit, :recipe_id => 1)
    assert fish.save
    ingredient = Ingredient.find_by substance: @substance
    assert_equal(ingredient.quantity, @quantity)
  end

end
