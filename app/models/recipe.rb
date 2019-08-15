class Recipe < ApplicationRecord
    has_many :ingredientsRecipes, dependent: :destroy
    has_many :ingredients, through: :ingredientsRecipes
    accepts_nested_attributes_for :ingredientsRecipes, allow_destroy: true
    validates :title, :total_time, :preparation_time, :serving, presence: true
end
