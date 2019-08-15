class Recipe < ApplicationRecord
    validates :title, :total_time, :preparation_time, :serving, presence: true
end
