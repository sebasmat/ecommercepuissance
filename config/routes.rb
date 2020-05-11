Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :celular
  resources :informacioncel
  root 'celular#index'
end
