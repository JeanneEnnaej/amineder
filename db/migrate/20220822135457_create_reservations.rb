class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :status, default: 'pending'
      t.references :user, null: false, foreign_key: true
      t.references :amine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
