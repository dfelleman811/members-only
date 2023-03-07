Rails.application.routes.draw do
  devise_for :members
  root "home#index"

  resources :posts, only: [:index, :new, :create]

end
