class Recipe < ActiveRecord::Base
	validates :name, :length => { :minimum => 5 }
	validates :preparation_time, :numericality => { :only_integer => true, :greater_than_or_equal_to => 60 }
	validates :difficulty, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }
	validates :cooking_time, :numericality => { :only_integer => true }
	validates :rest_time, :numericality => { :only_integer => true }
end
