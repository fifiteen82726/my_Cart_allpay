Rails.application.routes.draw do
  
  

  get 'line_items/create'

  get 'line_items/update'

  get 'line_items/destroy'

  resources :line_items, only: %i[create update destroy]

  

  root 'products#index'
  resources :products, only: :show
  resource :cart, only: %i[show update]
  
end
