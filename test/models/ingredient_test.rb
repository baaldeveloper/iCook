require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  test "should have a quantity greater than zero" do
	assert_not ingredients(:one).save
  end
  
  test "should have a substance" do
    assert true
  end
  
  test "should have a quantity name" do
    assert true
  end 
  
  
  
end
