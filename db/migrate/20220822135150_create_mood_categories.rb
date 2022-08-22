class CreateMoodCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :mood_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :mood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
