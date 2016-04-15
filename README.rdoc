#Books a shitty fictitious flight

## Features
* creates random list of flights with attributes: datetime
* search algorithm 
```ruby 
where('start_datetime >= ?', "#{DateTime.parse(items[:start_datetime])}").where('to_airport_id = ?', items[:to_airport_id]).where('from_airport_id = ?', items[:from_airport_id]) 
```
