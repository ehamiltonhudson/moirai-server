class CreateArcanas < ActiveRecord::Migration[5.2]
  def change
    create_table :arcanas do |t|
      t.string :key
      t.integer :count
      t.references :deck, foreign_key: true

      t.timestamps
    end
  end
end
