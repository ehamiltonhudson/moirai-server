class Deck < ApplicationRecord
  has_many :arcanas
  has_many :cards, through: :arcanas
  # validates_associated :arcanas, :length => { maximum: 2 }

end
