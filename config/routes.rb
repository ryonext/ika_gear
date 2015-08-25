Rails.application.routes.draw do
  resources :gears

  root "gears#index"
end
