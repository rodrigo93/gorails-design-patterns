Rails.application.routes.draw do
  resources :users
  resource :contact
  root to: "users#index"
end
