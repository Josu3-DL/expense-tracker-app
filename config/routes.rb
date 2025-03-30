Rails.application.routes.draw do
  resources :expense, path: 'dashboard', only: [:destroy, :update] 
 
  get "dashboard", to: "expense#index"
  post "dashboard", to: "expense#create"
  patch "dashboard/:id", to: "expense#update"
  delete "dashboard/:id", to: "expense#destroy"

  get "register", to: "user#new"
  post 'register', to: 'user#create'
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"


  
end
