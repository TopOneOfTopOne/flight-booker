class CreatePassengers < ActiveRecord::Migration
  def change
    create_table :passengers do |t|
      t.belongs_to :booking
      t.string :name
      t.email :email
      t.timestamps null: false
    end
  end
end
