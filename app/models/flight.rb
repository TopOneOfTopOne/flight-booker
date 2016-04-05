class Flight < ActiveRecord::Base
  belongs_to :from_airport
  belongs_to :to_airport

  def self.search(items=nil)
    where('start_datetime LIKE ?', "%#{items[:start_datetime]}%").where('to_airport_id = ?', items[:to_airport_id]).where('from_airport_id = ?', items[:from_airport_id])
  end
end
