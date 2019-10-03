Rails.application.routes.draw do
  namespace :auth do
    get 'dashboard/index'
  end
  devise_for :users
  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
