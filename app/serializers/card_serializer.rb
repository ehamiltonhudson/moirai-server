class CardSerializer < ActiveModel::Serializer
  attributes :id, :role, :trump, :arcana, :suit, :rank, :image
  belongs_to :arcana, serializer: ArcanaSerializer
end
