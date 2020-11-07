class Step < ApplicationRecord
  belongs_to :recipe, inverse_of: :steps
  belongs_to :ingredient
  
  validates :recipe, presence: true

  accepts_nested_attributes_for :ingredient
end
