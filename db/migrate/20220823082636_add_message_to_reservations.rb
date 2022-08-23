class AddMessageToReservations < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :message, :text
  end
end
