require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
	test "difficulty must be an integer higher than 5 or lower than 1" do
		recipe = recipes(:difficulty_more_than_5)
		assert_not recipe.save
		recipe = recipes(:difficulty_less_than_1)
		assert_not recipe.save
	end
	
	test "preparation time must be an integer greater than or equal to 1 minute and " do
		recipe = recipes(:wrong_preparation_time)
		assert_not recipe.save
		recipe = recipes(:float_preparation_time)
		assert_not recipe.save
	end
	
	test "the name of the recipe should have more than 5 characters" do
		recipe = recipes(:name_too_short)
		assert_not recipe.save
	end
	
	test "cooking time must be an integer" do
		recipe = recipes(:wrong_cooking_time)
		assert_not recipe.save
	end
	
	test "rest time must be an integer" do
		recipe = recipes(:wrong_rest_time)
		assert_not recipe.save
	end
end
