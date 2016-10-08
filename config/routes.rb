Rails.application.routes.draw do
  resources :periodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'periodes#index'
end
