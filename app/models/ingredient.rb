# create_table :ingredients do |t|
#   t.string  :substance,     null: false
#   t.decimal :quantity,      null: false,  default: 0
#   t.string  :quantity_unit, null: false,  default: 'tablespoon'
#   t.integer :recipe_id,     null: false
# end

require 'unitwise'
require 'unitwise/ext'

class Ingredient < ActiveRecord::Base
  validates :substance, presence: true
  validates :quantity, numericality: { :greater_than => 0.00 }
  validates :quantity_unit, presence: true

  def quantity
    read_attribute(:quantity).convert_to(self.quantity_unit)
  end

  def quantity=(value)
    write_attribute :quantity, value.to_tablespoon
    if value.respond_to?(:unit)
      self.quantity_unit = value.unit.to_s
    end
  end
end
