class Ingredient < ApplicationRecord
    has_many :ingredientsRecipes, dependent: :restrict_with_error
    has_many :recipes, through: :ingredientsRecipes
    validates :name, presence: true
end
