Rails.application.routes.draw do
  root to: 'rentals#index'

    resources :rentals do
      resources :inquiries

    end
end
