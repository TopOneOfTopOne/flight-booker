class FlightsController < ApplicationController
  def index
    @start_datetimes = Flight.all.map { |flight| flight.start_datetime.to_date }.uniq
    @airport_ids = Airport.all.map { |airport| [airport.code, airport.id] }
    @num_passengers = (1..4).to_a

    # searching
    @flights = Flight.search(flight_search_params) unless params[:flight_search].nil?

  end

  private
  def flight_search_params
    params.require(:flight_search).permit(:start_datetime, :to_airport_id, :from_airport_id)
  end

end
