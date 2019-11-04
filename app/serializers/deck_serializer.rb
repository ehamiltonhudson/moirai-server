class DeckSerializer < ActiveModel::Serializer
  attributes :id, :count, :shuffled
  has_many :arcanas, serializer: ArcanaSerializer
  has_many :cards, through: :arcanas, serializer: CardSerializer

end
