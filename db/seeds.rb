# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


DatabaseCleaner.clean_with(:truncation)

@deck = Deck.create!

# Arcana.create!(key: 'Major', deck_id: @deck.id)
# Arcana.create!(key: 'Minor', deck_id: @deck.id)
# @major_arcana = Arcana.find_by key: 'Major'
# @minor_arcana = Arcana.find_by key: 'Minor'

@major_arcana = Arcana.create!(key: 'Major', deck_id: @deck.id)
@minor_arcana = @arcana.create!(key: 'Minor', deck_id: @deck.id)

22.times do
  Card.create!(role: 'Trump Card', major: true, minor: false, arcana_id: @major_arcana.id)
end

56.times do
  Card.create!(role: 'Suit Card', major: true, minor: true,  arcana_id: @minor_arcana.id)
end

# Deck.first.arcanas.find_by key: "Major"
# Deck.first.arcanas.find_by(key: "Major")

# # 22 major arcana cards
@major_arcana_cards = [
  {Trump: 'The Fool', position: 1},
  {Trump: 'The Magician', position: 2},
  {Trump: 'The High Priestess', position: 3},
  {Trump: 'The Empress', position: 4},
  {Trump: 'The Emperor', position: 5},
  {Trump: 'The Hierophant', position: 6},
  {Trump: 'The Lovers', position: 7},
  {Trump: 'The Chariot', position: 8},
  {Trump: 'Strength', position: 9},
  {Trump: 'The Hermit', position: 10},
  {Trump: 'Wheel of Fortune', position: 11},
  {Trump: 'Justice', position: 12},
  {Trump: 'The Hanged Man', position: 13},
  {Trump: 'Death', position: 14},
  {Trump: 'Temperance', position: 15},
  {Trump: 'The Devil', position: 16},
  {Trump: 'The Tower', position: 17},
  {Trump: 'The Star', position: 18},
  {Trump: 'The Moon', position: 19},
  {Trump: 'The Sun', position: 20},
  {Trump: 'Judgment', position: 21},
  {Trump: 'The World', position: 22}
]

# 56 minor arcana cards
@minor_arcana_cards = []

@wanrds = [
  {rank: 'One', suit: 'Wands'},
  {rank: 'Two', suit: 'Wands'},
  {rank: 'Three', suit: 'Wands'},
  {rank: 'Four', suit: 'Wands'},
  {rank: 'Five', suit: 'Wands'},
  {rank: 'Six', suit: 'Wands'},
  {rank: 'Seven', suit: 'Wands'},
  {rank: 'Eight', suit: 'Wands'},
  {rank: 'Nine', suit: 'Wands'},
  {rank: 'Ten', suit: 'Wands'},
  {rank: 'Page', suit: 'Wands'},
  {rank: 'Knight', suit: 'Wands'}
]
@wands.each do |wand|
  @minor_arcana_cards.push(wand)
end

@swords = [
  {rank: 'Queen', suit: 'Wands'},
  {rank: 'King', suit: 'Wands'},
  {rank: 'One', suit: 'Swords'},
  {rank: 'Two', suit: 'Swords'},
  {rank: 'Three', suit: 'Swords'},
  {rank: 'Four', suit: 'Swords'},
  {rank: 'Five', suit: 'Swords'},
  {rank: 'Six', suit: 'Swords'},
  {rank: 'Seven', suit: 'Swords'},
  {rank: 'Eight', suit: 'Swords'},
  {rank: 'Nine', suit: 'Swords'},
  {rank: 'Ten', suit: 'Swords'},
  {rank: 'Page', suit: 'Swords'},
  {rank: 'Knight', suit: 'Swords'},
  {rank: 'Queen', suit: 'Swords'},
  {rank: 'King', suit: 'Swords'}
]
@swords.each do |sword|
  @minor_arcana_cards.push(sword)
end

@pentacles = [
  {rank: 'One', suit: 'Pentacles'},
  {rank: 'Two', suit: 'Pentacles'},
  {rank: 'Three', suit: 'Pentacles'},
  {rank: 'Four', suit: 'Pentacles'},
  {rank: 'Five', suit: 'Pentacles'},
  {rank: 'Six', suit: 'Pentacles'},
  {rank: 'Seven', suit: 'Pentacles'},
  {rank: 'Eight', suit: 'Pentacles'},
  {rank: 'Nine', suit: 'Pentacles'},
  {rank: 'Ten', suit: 'Pentacles'},
  {rank: 'Page', suit: 'Pentacles'},
  {rank: 'Knight', suit: 'Pentacles'},
  {rank: 'Queen', suit: 'Pentacles'},
  {rank: 'King', suit: 'Pentacles'}
]
@pentacles.each do |pentacle|
  @minor_arcana_cards.push(pentacle)
end

@chalices = [
  {rank: 'One', suit: 'Chalices'},
  {rank: 'Two', suit: 'Chalices'},
  {rank: 'Three', suit: 'Chalices'},
  {rank: 'Four', suit: 'Chalices'},
  {rank: 'Five', suit: 'Chalices'},
  {rank: 'Six', suit: 'Chalices'},
  {rank: 'Seven', suit: 'Chalices'},
  {rank: 'Eight', suit: 'Chalices'},
  {rank: 'Nine', suit: 'Chalices'},
  {rank: 'Ten', suit: 'Chalices'},
  {rank: 'Page', suit: 'Chalices'},
  {rank: 'Knight', suit: 'Chalices'},
  {rank: 'Queen', suit: 'Chalices'},
  {rank: 'King', suit: 'Chalices'}
]
@chalices.each do |chalice|
  @minor_arcana_cards.push(chalice)
end

@major_arcana_cards.each do |card|
  Card.create!(trump: card[:trump], position: card[:position])
  # Card.create!(trump: card[:trump], position: card[:position], arcana_id: @major_arcana.id)
end
#
# @minor_arcana_cards.each do |card|
#   Card.create!(rank: card[:rank], suit: card[:suit])
#   Card.create!(rank: card[:rank], suit: card[:suit], arcana_id: @minor_arcana.id)
# end


# {role: 'Suit Card', major: false, minor: true,  arcana_id: @minor_arcana.id, suit: 'Wands', rank: "One"},
# {rank: 'Trump Card', major: true, minor: false,  arcana_id: @major_arcana.id, trump: 'The Fool', position: 1}
