Rails.application.routes.draw do
  resources :standards
  get 'statistic/index'
  
  

  resources :daily_records
  resources :henhouses
  resources :periodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'periodes#index'
end
