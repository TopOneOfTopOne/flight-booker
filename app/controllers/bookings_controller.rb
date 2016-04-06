class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new(flight_id: params[:booking][:flight])
    @num_passengers = params[:booking][:num_passengers]
    @num_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to all_url
    else
      render 'new'
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
