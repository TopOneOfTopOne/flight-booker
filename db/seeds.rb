
5.times do |n|
  Airport.create(code: ('A'..'Z').to_a[n..n+2].join)
end

1.times do |n|
  Airport.all.each do |from_airport|
    Airport.all.each do |to_airport|
      Flight.create(from_airport_id: from_airport.id, to_airport_id: to_airport.id,
                    start_datetime: rand.weeks.from_now, flight_duration: rand.days)

    end
  end
end