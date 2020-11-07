class Recipe < ApplicationRecord
  has_many :steps, inverse_of: :recipe
  has_many :ingredients, through: :steps
  accepts_nested_attributes_for :steps
end
