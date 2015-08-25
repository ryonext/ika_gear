Rails.application.routes.draw do
  resources :gears, only: [:index]

  root "gears#index"
end
