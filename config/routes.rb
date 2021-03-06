Rails.application.routes.draw do

  devise_for :users

  get 'searches/show'

  root  "home#index"

  get 'contact' => "home#contact"
  get 'menu' => "home#menu"
  get 'thank' => "home#thank"

  resources :food_items , shallow: true do
    resources :reviews, only: :create
  end

  resource :search, only: :show

  put 'order' => 'orders#update_order'
  resource :orders, only: [:show, :update]

  resources :profiles, only: [:edit, :update]

end
