class Arcana < ApplicationRecord
  has_many :cards
  belongs_to :deck
  # has_and_belongs_to_many :decks
end
