Rails.application.routes.draw do
  resources :copropietarios
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'copropietario' => 'copropietarios#index'
end
