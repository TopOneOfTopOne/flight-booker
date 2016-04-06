class BookingsController < ApplicationController

  def new
    @booking = Booking.new(flight_id: params[:booking][:flight])
    @num_passengers = params[:booking][:num_passengers]
    @num_passengers.to_i.times { @booking.passengers.build }
  end

end
