Rails.application.routes.draw do
  resources :gears, only: [:index] do
    collection do
      post :csv, defaults: { format: :csv }
    end
  end

  root "gears#index"
end
