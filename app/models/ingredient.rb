class Ingredient < ApplicationRecord
  has_many :recipes, through: :steps
  has_many :steps

  validates :step, presence: true
  validates :name, uniqueness: true
end
