class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.boolean :major
      t.boolean :minor
      t.string :role
      t.references :arcana, foreign_key: true

      t.timestamps
    end
  end
end
