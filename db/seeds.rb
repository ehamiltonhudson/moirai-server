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

@marseilles_wands = {
  1 => 'https://drive.google.com/file/d/1RDjHzkL8zTRkf-YeTHVI65gnRxF-ye2E/view?usp=sharing',
  2 => 'https://drive.google.com/file/d/1uQPI0K5gHkmQxx0XbFMK0lpS6MUTE6HH/view?usp=sharing',
  3 => 'https://drive.google.com/file/d/13vb80hKQPsFyQ_DDFg0fFpHGLwPjgVWF/view?usp=sharing',
  4 => 'https://drive.google.com/file/d/14O2k5uwemtnIrW8hEVVWWDJePVRLB07p/view?usp=sharing',
  5 => 'https://drive.google.com/file/d/1JBrRdt0LqvEgbVICCYl65a3KNeu5Rs5Z/view?usp=sharing',
  6 => 'https://drive.google.com/file/d/1Rv4jYNO8z3kUmswu7HsOshiDSybI1692/view?usp=sharing',
  7 => 'https://drive.google.com/file/d/1WBudLkIMhgxjhPRqFSJ_H31UGGEVRm0f/view?usp=sharing',
  8 => 'https://drive.google.com/file/d/154xAXlTdn_JzypJMTjIuBFZjvg5z-m4I/view?usp=sharing',
  9 => 'https://drive.google.com/file/d/1cVpCMImqcxPHf34wpUElWPMVAlnHqmB7/view?usp=sharing',
  10 => 'https://drive.google.com/file/d/1He-1c_g9QVBXF5NBW6EXrY0IkxX9OceE/view?usp=sharing',
  11 => 'https://drive.google.com/file/d/14amBFE5W4pzGPbdVHGIYCuxlIg8StYP3/view?usp=sharing',
  12 => 'https://drive.google.com/file/d/1EoN2Vtd_zMDwsDwv5hHnUHkZaSHCtM9p/view?usp=sharing',
  13 => 'https://drive.google.com/file/d/1zHXZTwuJQei1rr1_ltd_acU2c0Ngh3mu/view?usp=sharing',
  14 => 'https://drive.google.com/file/d/1rsLts0-iTuWwo3Yg5qC6Mp6axZ1-MWNk/view?usp=sharing'
}
c.image = @marseilles_wands[k]

Card.all.find_all do |c|
  c.suit == "Wands"
  @marseilles_wands.map do |k, v|
    if k == c.rank
      c.update_attributes(image: @marseilles_wands[k])
      c.save
    end
  end
end

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

@marseilles_pentacles = {
  1 => 'https://drive.google.com/file/d/1r8-pAEdARu4aX7k-XsIdruELR3zr0SO_/view?usp=sharing',
  2 => 'https://drive.google.com/file/d/1-PKyBYrT6PZLvNY85Fr-RY6rssKV1vOE/view?usp=sharing',
  3 => 'https://drive.google.com/file/d/1MRJrTrTYlFjvL-2pQgNClm75AtNcj6Un/view?usp=sharing',
  4 => 'https://drive.google.com/file/d/14Z6w3nslnKZ81sB8DeBtKIme4VwjEJLo/view?usp=sharing',
  5 => 'https://drive.google.com/file/d/1BWNxixN34KlT-Mawz_20wEIzBhdz1lCc/view?usp=sharing',
  6 => 'https://drive.google.com/file/d/1S4068dLRNyQ6ky4BOlCwuuXlU-cIQVH9/view?usp=sharing',
  7 => 'https://drive.google.com/file/d/1McnDTX7IUPdq6rFX6f-rLItk6j4hyZJv/view?usp=sharing',
  8 => 'https://drive.google.com/file/d/1j22o2bga0OOzU2Ngjr9h2EZ-z30KJ5-f/view?usp=sharing',
  9 => 'https://drive.google.com/file/d/145VvYTXlLEH5JFou3u8SsLsziCekhJaO/view?usp=sharing',
  10 => 'https://drive.google.com/file/d/1CBhlMQxSi-1ZM79qhrNydh5LnxuRVSSF/view?usp=sharing',
  11 => 'https://drive.google.com/file/d/1MXKuFwGHJudQ-uniwZcf82KNpiMVK8Tu/view?usp=sharing',
  12 => 'https://drive.google.com/file/d/1sgU13yXEMGZHCkL-7vtSE2o-ehWSinki/view?usp=sharing',
  13 => 'https://drive.google.com/file/d/15t4i5M_OQK-yRw37oStpC5ZNhqtmehjQ/view?usp=sharing',
  14 => 'https://drive.google.com/file/d/1RJe1qfhxA70NubnLKxnJbCzmbFlDj4DI/view?usp=sharing'
}

Card.all.find_all do |c|
  c.suit == "Pentacles"
  @marseilles_pentacles.map do |k, v|
    if k == c.rank
      c.image = @marseilles_pentacles[k]
      c.save
    end
  end
end

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

@marseilles_swords = {
  1 => 'https://drive.google.com/file/d/1VDPmF8Aar9M-eG_iE_UUNodbmfqrwsOn/view?usp=sharing',
  2 => 'https://drive.google.com/file/d/1QXE_aX0el6CnbThR7hFFmH-Mcv7J8MzD/view?usp=sharing',
  3 => 'https://drive.google.com/file/d/1LUhC86oDGNpNgobIVGaMSunU1jR5hlUk/view?usp=sharing',
  4 => 'https://drive.google.com/file/d/1g6up0eZi367g8gLLRTaPxODGINmwCpUX/view?usp=sharing',
  5 => 'https://drive.google.com/file/d/1ugJ4yh6YRQKFZnNm2e0XGgTzkh4_Q7CV/view?usp=sharing',
  6 => 'https://drive.google.com/file/d/1KzyDoiOu11CMbel6aH9Zf9mNXdzSn8Nq/view?usp=sharing',
  7 => 'https://drive.google.com/file/d/1qaBqAHe836iVRB0w0B2bxJj6e6_BVVT8/view?usp=sharing',
  8 => 'https://drive.google.com/file/d/1UK-4AaslzZ46sSZwQRIfrt8_RpSo4apv/view?usp=sharing',
  9 => 'https://drive.google.com/file/d/1Ie3X8dltqwCGOQLgtxH2SLfcAgh8M4M5/view?usp=sharing',
  10 => 'https://drive.google.com/file/d/1qc6cGUBxPder3gnGYQQMEdLrK4kXc33f/view?usp=sharing',
  11 => 'https://drive.google.com/file/d/1ADBWecTQy7WJjOPTgUJZRL3e80n878Zc/view?usp=sharing',
  12 => 'https://drive.google.com/file/d/1Ov_p4SRhNOZ5HR7Bq3ILGKmYn5SIsuKF/view?usp=sharing',
  13 => 'https://drive.google.com/file/d/1PFGh_KEwFynAVqP4o9GKXa-PQ341YzMc/view?usp=sharing',
  14 => 'https://drive.google.com/file/d/1e3pYavQSTkXoAV1KcsHjm-2s1JzDQd7a/view?usp=sharing'
}

Card.all.find_all do |c|
  c.suit == "Swords"
  @marseilles_swords.map do |k, v|
    if k == c.rank
      c.update_attributes(image: @marseilles_swords[k])
    end
  end
end

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

@marseilles_chalices = {
  1 => 'https://drive.google.com/file/d/1lbujnCCACNJVVblJiQPkLEzCbJ3yZqTM/view?usp=sharing',
  2 => 'https://drive.google.com/file/d/17884CsMQtk_eeHXgbGu83G45INec8tLj/view?usp=sharing',
  3 => 'https://drive.google.com/file/d/1yvzoQ6J4fnlUKxu238vDKDjHOfPQ23gb/view?usp=sharing',
  4 => 'https://drive.google.com/file/d/1Uj0jF1zS8l0NztuAlPuJATO84i43YILY/view?usp=sharing',
  5 => 'https://drive.google.com/file/d/1hZgIbo6oA3PcAfpLJlSP4NL2fSC3tHea/view?usp=sharing',
  6 => 'https://drive.google.com/file/d/14XMQ5S06ZZOwL2JGSdxPQIOfgtlDnctl/view?usp=sharing',
  7 => 'https://drive.google.com/file/d/1_Q5bI17uZYvdpkncJbgri-kdCwQo13q3/view?usp=sharing',
  8 => 'https://drive.google.com/file/d/1vPYWLEdnAv2tTkPeDzUu4shJHgwWCa1K/view?usp=sharing',
  9 => 'https://drive.google.com/file/d/1Fmt7EsrCYoPSSVnv4x3yUG33flj3y4QG/view?usp=sharing',
  10 => 'https://drive.google.com/file/d/1QmSgpt0qBTWiHeW7Y9P9kB207Qui-mhB/view?usp=sharing',
  11 => 'https://drive.google.com/file/d/1xU-YD90xW7BxkAMRMBjE3zwRgH2B0ovZ/view?usp=sharing',
  12 => 'https://drive.google.com/file/d/1zOT7hAfXzDpHGqMkRrTnssvBIkBal_CI/view?usp=sharing',
  13 => 'https://drive.google.com/file/d/1PVUwlWXKczs9baoQyqNRo4LDwCebk4AS/view?usp=sharing',
  14 => 'https://drive.google.com/file/d/19DTXJ2Ql7bh7jEXAMuZbs3fFvuq6kEat/view?usp=sharing'
}

Card.all.find_all do |c|
  c.suit == "Chalices"
  @marseilles_chalices.map do |k, v|
    if k == c.rank
      c.image = @marseilles_chalices[k]
    end
  end
end

@chalices.each do |chalice|
  @minor_arcana_cards.push(chalice)
end


@minor_arcana_cards.each do |card|
  Card.create!(role: card[:role], trump: false, arcana_id: @minor_arcana.id, suit: card[:suit], rank: card[:rank])
end
