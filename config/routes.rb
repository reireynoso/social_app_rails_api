Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create]
      resources :messages, only: [:create]
      post "/follow_action", to: "follows#follow_action"
      post "/login", to: "sessions#login"
      get "/auto_login", to: "sessions#auto_login"
      mount ActionCable.server => '/cable'
    end
  end
end
