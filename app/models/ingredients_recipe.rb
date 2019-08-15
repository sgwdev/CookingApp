class IngredientsRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient
  belongs_to :unit

  validates :amount, presence: true
end
