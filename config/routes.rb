Rails.application.routes.draw do
resources :passwords
  devise_for :users
  resources :items do
member do
patch :complete
end
end
root 'items#index'
end
