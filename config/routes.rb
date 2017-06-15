Rails.application.routes.draw do
  get 'searches/show'

  root  "home#index"

  get 'contact' => "home#contact"

  get 'menu' => "home#menu"

  resources :food_items

  resource :search, only: :show

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
