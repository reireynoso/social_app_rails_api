Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users, only: [:create]
      post "/login", to: "sessions#login"
      get "/auto_login", to: "sessions#auto_login"
    end
  end
end
