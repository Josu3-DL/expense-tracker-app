Rails.application.routes.draw do
  
  get "register", to: "user#new"
  post 'register', to: 'user#create'
  
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
end
