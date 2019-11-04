class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :role
      t.boolean :trump
      t.references :arcana, foreign_key: true
      t.string :suit
      t.integer :rank
      t.string :image

      t.timestamps
    end
  end
end
