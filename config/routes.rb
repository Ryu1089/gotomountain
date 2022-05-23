Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  devise_scope :user do
   post '/home/guest_sign_in', to: 'home#new_guest'
  end
  resources :users
  resources :mountains do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
