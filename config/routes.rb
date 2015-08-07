Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

    resources :rentals do
      resources :inquiries
    end

    resources :inquiries


end
