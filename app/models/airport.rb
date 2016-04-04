class Airport < ActiveRecord::Base
  has_many :departed_flights, foreign_key: :from_airport_id, class_name: 'Flight'
  has_many :arrival_flights, foreign_key: :to_airport_id, class_name: 'Flight'
end
