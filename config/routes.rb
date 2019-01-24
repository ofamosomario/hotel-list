Rails.application.routes.draw do
  devise_for :users
  resources :hotels

  get 'pages/hotel-list', to: 'pages#hotel_list' , as: 'hotel_lists'

  root to: 'pages#index'
end
