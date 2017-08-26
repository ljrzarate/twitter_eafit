Rails.application.routes.draw do
  get 'twits/index'

  devise_for :users
  root to: "pages#index"
  resources :twits
end
