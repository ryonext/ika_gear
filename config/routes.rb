Rails.application.routes.draw do
  resources :gears, only: [:index] do
    collection do
      post :csv, defaults: { format: :csv }
    end
  end

  resources :blands, only: [:show]
  resources :gear_powers, only: [:show]
  resources :manmenmes, only: [:create], defaults: { format: :json }

  root "gears#index"
end
