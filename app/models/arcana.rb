class Arcana < ApplicationRecord
  belongs_to :deck
  has_many :cards
end
