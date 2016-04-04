class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.belongs_to :to_airport
      t.belongs_to :from_airport
      t.datetime :start_datetime
      t.integer :flight_duration
      t.timestamps null: false
    end
  end
end
