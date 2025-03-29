Rails.application.routes.draw do

  

  get "dashboard", to: "expense#index"
  post "dashboard", to: "expense#create"
  delete "dashboard/:id", to: "expense#destroy"
  
  get "register", to: "user#new"
  post 'register', to: 'user#create'
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"


  
end
