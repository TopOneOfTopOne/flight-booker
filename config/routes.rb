Rails.application.routes.draw do
  get 'flights' => 'flights#index'

  root 'flights#index'
end
