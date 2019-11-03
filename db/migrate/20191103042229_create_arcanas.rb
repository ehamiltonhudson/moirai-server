class CreateArcanas < ActiveRecord::Migration[5.2]
  def change
    create_table :arcanas do |t|
      t.string :key
      t.integer :deck_id

      t.timestamps
    end
  end
end
