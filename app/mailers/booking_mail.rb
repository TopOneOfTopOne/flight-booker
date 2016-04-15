class BookingMail < ApplicationMailer
  default from: 'no-reply@flightbooker.com'
  def confirmation_email(passenger)
    @passenger = passenger
    passenger_email_with_name = %("#{@passenger.name}" <#{passenger.email}>)
    mail(
        to: passenger_email_with_name, subject: 'Confirmation'
    )
  end
end
