Rails.application.routes.draw do
  get 'categories' => 'categories#index'
  get 'busca' => 'stars#busca'
  get 'buscado' => 'stars#buscado'
  root 'home#index'

  resources :stars
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
