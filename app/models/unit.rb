class Unit < ApplicationRecord
    has_many :ingredientsRecipes
    validates :name, :symbol, presence: true
end
