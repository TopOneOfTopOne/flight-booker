#Books a shitty fictitious flight <a href="https://flightbooker69.herokuapp.com/", target="_blank">here</a>

## Features
* creates random list of flights with attributes: datetime
* search algorithm 
  ```
  where('start_datetime >= ?', "#{DateTime.parse(items[:start_datetime])}").where('to_airport_id = ?', items[:to_airport_id]).where('from_airport_id = ?', items[:from_airport_id]) 
  ```
* utilises sendgrid servers' to send out emails
