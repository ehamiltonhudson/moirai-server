class Deck < ApplicationRecord
  has_many :arcanas
  # has_and_belongs_to_many :arcanas
  has_many :cards
  # has_many :cards, through: :arcarnas

end
