class Ingredient < ApplicationRecord
  belongs_to :cocktail # cocktail_id presence: true
  validates :name, presence: true
end
