class CreateAmines < ActiveRecord::Migration[7.0]
  def change
    create_table :amines do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :owner, null: false, foreign_key: { to_table: :users }
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
