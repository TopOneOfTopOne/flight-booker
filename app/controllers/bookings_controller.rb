class BookingsController < ApplicationController

  def new
    @booking = Booking.new(flight_id: params[:booking][:flight])
  end

end
