# AM: Dope! You made your inquiries available nested and non-nested routes.
# AM: A way to refine this would be to restrict your different sets of Inquiry routes to only include the ones you actually use (e.g. non-nested Inquiries only require the show and edit routes).

Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

    resources :rentals do
      resources :inquiries
    end

    resources :inquiries


end
