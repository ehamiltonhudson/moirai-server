# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DatabaseCleaner.clean_with(:truncation)

@deck = Deck.create!

@major_arcana = Arcana.create!(key: 'Major', count: 22, deck_id: @deck.id)
@minor_arcana = Arcana.create!(key: 'Minor', count: 56, deck_id: @deck.id)

# 22 major arcana cards
@major_arcana_cards = [
  {role: 'The Fool', rank: 1},
  {role: 'The Magician', rank: 2},
  {role: 'The High Priestess', rank: 3},
  {role: 'The Empress', rank: 4},
  {role: 'The Emperor', rank: 5},
  {role: 'The Hierophant', rank: 6},
  {role: 'The Lovers', rank: 7},
  {role: 'The Chariot', rank: 8},
  {role: 'Strength', rank: 9},
  {role: 'The Hermit', rank: 10},
  {role: 'Wheel of Fortune', rank: 11},
  {role: 'Justice', rank: 12},
  {role: 'The Hanged Man', rank: 13},
  {role: 'Death', rank: 14},
  {role: 'Temperance', rank: 15},
  {role: 'The Devil', rank: 16},
  {role: 'The Tower', rank: 17},
  {role: 'The Star', rank: 18},
  {role: 'The Moon', rank: 19},
  {role: 'The Sun', rank: 20},
  {role: 'Judgment', rank: 21},
  {role: 'The World', rank: 22}
]

@major_arcana_cards.each do |card|
  Card.create!(role: card[:role], trump: true, arcana_id: @major_arcana.id, suit: "Journey", rank: card[:rank])
end


# 56 minor arcana cards
@minor_arcana_cards = []

# WANDS
@wands = [
  {role: 'One', suit: 'Wands', rank: 1},
  {role: 'Two', suit: 'Wands', rank: 2},
  {role: 'Three', suit: 'Wands', rank: 3},
  {role: 'Four', suit: 'Wands', rank: 4},
  {role: 'Five', suit: 'Wands', rank: 5},
  {role: 'Six', suit: 'Wands', rank: 6},
  {role: 'Seven', suit: 'Wands', rank: 7},
  {role: 'Eight', suit: 'Wands', rank: 8},
  {role: 'Nine', suit: 'Wands', rank: 9},
  {role: 'Ten', suit: 'Wands', rank: 10},
  {role: 'Page', suit: 'Wands', rank: 11},
  {role: 'Knight', suit: 'Wands', rank: 12},
  {role: 'Queen', suit: 'Wands', rank: 12},
  {role: 'King', suit: 'Wands', rank: 14},
]
@wands.each do |wand|
  @minor_arcana_cards.push(wand)
end

# PENTACLES
@pentacles = [
  {role: 'One', suit: 'Pentacles', rank: 1},
  {role: 'Two', suit: 'Pentacles', rank: 2},
  {role: 'Three', suit: 'Pentacles', rank: 3},
  {role: 'Four', suit: 'Pentacles', rank: 4},
  {role: 'Five', suit: 'Pentacles', rank: 5},
  {role: 'Six', suit: 'Pentacles', rank: 6},
  {role: 'Seven', suit: 'Pentacles', rank: 7},
  {role: 'Eight', suit: 'Pentacles', rank: 8},
  {role: 'Nine', suit: 'Pentacles', rank: 9},
  {role: 'Ten', suit: 'Pentacles', rank: 10},
  {role: 'Page', suit: 'Pentacles', rank: 11},
  {role: 'Knight', suit: 'Pentacles', rank: 12},
  {role: 'Queen', suit: 'Pentacles', rank: 13},
  {role: 'King', suit: 'Pentacles', rank: 14}
]
@pentacles.each do |pentacle|
  @minor_arcana_cards.push(pentacle)
end

# SWORDS
@swords = [
  {role: 'One', suit: 'Swords', rank: 1},
  {role: 'Two', suit: 'Swords', rank: 2},
  {role: 'Three', suit: 'Swords', rank: 3},
  {role: 'Four', suit: 'Swords', rank: 4},
  {role: 'Five', suit: 'Swords', rank: 5},
  {role: 'Six', suit: 'Swords', rank: 6},
  {role: 'Seven', suit: 'Swords', rank: 7},
  {role: 'Eight', suit: 'Swords', rank: 8},
  {role: 'Nine', suit: 'Swords', rank: 9},
  {role: 'Ten', suit: 'Swords', rank: 10},
  {role: 'Page', suit: 'Swords', rank: 11},
  {role: 'Knight', suit: 'Swords', rank: 12},
  {role: 'Queen', suit: 'Swords', rank: 13},
  {role: 'King', suit: 'Swords', rank: 14}
]
@swords.each do |sword|
  @minor_arcana_cards.push(sword)
end

# CHALICES
@chalices = [
  {role: 'One', suit: 'Chalices', rank: 1},
  {role: 'Two', suit: 'Chalices', rank: 2},
  {role: 'Three', suit: 'Chalices', rank: 3},
  {role: 'Four', suit: 'Chalices', rank: 4},
  {role: 'Five', suit: 'Chalices', rank: 5},
  {role: 'Six', suit: 'Chalices', rank: 6},
  {role: 'Seven', suit: 'Chalices', rank: 7},
  {role: 'Eight', suit: 'Chalices', rank: 8},
  {role: 'Nine', suit: 'Chalices', rank: 9},
  {role: 'Ten', suit: 'Chalices', rank: 10},
  {role: 'Page', suit: 'Chalices', rank: 11},
  {role: 'Knight', suit: 'Chalices', rank: 12},
  {role: 'Queen', suit: 'Chalices', rank: 13},
  {role: 'King', suit: 'Chalices', rank: 14}
]
@chalices.each do |chalice|
  @minor_arcana_cards.push(chalice)
end


@minor_arcana_cards.each do |card|
  Card.create!(role: card[:role], trump: false, arcana_id: @minor_arcana.id, suit: card[:suit], rank: card[:rank])
end
