class Booking < ActiveRecord::Base
  has_many :passengers
  belongs_to :flight

  accepts_nested_attributes_for :passengers

  def send_confirmation_emails
    self.passengers.each do |passenger|
      BookingMail.confirmation_email(passenger).deliver_now
    end
  end
end
