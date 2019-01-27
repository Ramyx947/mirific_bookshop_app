Rails.application.routes.draw do
  # mount ActionCable.server => '/cable'
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
