class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.integer :count, :default => 78
      t.boolean :shuffled, :default => false

      t.timestamps
    end
  end
end
