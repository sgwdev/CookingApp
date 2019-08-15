class Unit < ApplicationRecord
    validates :name, :symbol, presence: true
end
