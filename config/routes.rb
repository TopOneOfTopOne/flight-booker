Rails.application.routes.draw do
  get 'flights' => 'flights#index'
  get 'bookings' => 'bookings#new'
  root 'flights#index'
end
