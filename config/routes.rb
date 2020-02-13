Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#root_redirect"
  # TODO: ADD SHOW ROUTE WHEN READY FOR SCREENCAP CHALLENGE
  resources :malontines
  resources :users, only: [:new, :create, :show]
  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
end
