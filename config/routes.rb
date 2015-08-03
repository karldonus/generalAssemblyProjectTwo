Rails.application.routes.draw do
  root to: 'welcome#index'

    resources :rentals do
      resources :inquiries
    end

    resources :inquiries

    resources :welcome
end
