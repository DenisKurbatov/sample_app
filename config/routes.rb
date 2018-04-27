Rails.application.routes.draw do
  
 



  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:edit, :new, :create, :update]


  root "static_pages#home"
  get "/help", to: "static_pages#help"  
  get "/about", to: "static_pages#about"
  get "/contact", to: "static_pages#contact"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

end
