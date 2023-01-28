Rails.application.routes.draw do
  resources :acceptances, only: [:new, :create]
  resources :books
end
