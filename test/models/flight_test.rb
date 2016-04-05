require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  def setup
    @search_me = {to_airport_id: 1, from_airport_id: 2}
    @search_me1 = {to_airport_id: 1, from_airport_id: 2, start_datetime: '2016-04-04'}
  end
  test "#search" do
    assert_equal 1, Flight.search(@search_me).count
    assert_equal 1, Flight.search(@search_me1).count
  end
end
