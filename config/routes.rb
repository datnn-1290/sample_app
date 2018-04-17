Rails.application.routes.draw do
  get  "users/new"
  get  "static_pages/home"
  get  "/help",    to: "static_pages#help", as: "help"
  get  "/about",   to: "static_pages#about"
  get  "/contactme", to: "static_pages#contact"
  get  "/signup", to: "users#new"
  post "/signup",  to: "users#create"
  get    "/login",   to: "sessions#new"
  post   "/login",   to: "sessions#create"
  delete "/logout",  to: "sessions#destroy"
  root "static_pages#home"
  resources :users
end
