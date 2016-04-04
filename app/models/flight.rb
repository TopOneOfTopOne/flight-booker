class Flight < ActiveRecord::Base
  belongs_to :from_airport
  belongs_to :to_airport

end
