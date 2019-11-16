class ArcanaSerializer < ActiveModel::Serializer
  attributes :id, :key, :count, :deck_id
  belongs_to :deck, serializer: DeckSerializer
  has_many :cards, serializer: CardSerializer
end
