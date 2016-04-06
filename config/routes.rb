Rails.application.routes.draw do
  get 'flights' => 'flights#index'
  get 'bookings' => 'bookings#new'
  get 'all' => 'bookings#index'
  post 'bookings' => 'bookings#create'
  root 'flights#index'
end
