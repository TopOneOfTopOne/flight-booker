class Flight < ActiveRecord::Base
  belongs_to :from_airport, class_name: 'Airport'
  belongs_to :to_airport, class_name:  'Airport'
  has_many :bookings

  def self.search(items=nil)
    where('start_datetime >= ?', "#{DateTime.parse(items[:start_datetime])}").where('to_airport_id = ?', items[:to_airport_id]).where('from_airport_id = ?', items[:from_airport_id])
  end
end
