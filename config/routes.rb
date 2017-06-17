Rails.application.routes.draw do

  get 'order_items/update'

  get 'order_items/destroy'

  get 'searches/show'

  root  "home#index"

  get 'contact' => "home#contact"

  get 'menu' => "home#menu"

  

  resources :food_items

  resource :search, only: :show

  put 'order' => 'orders#update_order'
  
  resource :orders

  resources :order_items, only: [:create, :update, :destroy]
end
