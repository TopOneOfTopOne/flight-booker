class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.belongs_to :flight
      t.timestamps null: false
    end
  end
end
