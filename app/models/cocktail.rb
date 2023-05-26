class Cocktail < ApplicationRecord
    has_many :ingredients, dependent: :destroy
    validates :name, presence: true

    RATING = (1..5).to_a
end
