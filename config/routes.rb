Rails.application.routes.draw do
  root "foods#index"
  resources :foods do
    resource :likes, only: [:create, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
