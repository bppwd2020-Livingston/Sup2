Rails.application.routes.draw do
  resources :roles
  
  namespace :auth do
    get 'dashboard/index'

    get 'responses/index'
    get 'responses/show'
    get 'responses/new'
    post 'responses/create'
    get 'responses/edit'
    patch 'responses/update'
    delete 'responses/destroy'

    get 'questions/index'
    get 'questions/show'
    get 'questions/new'
    post 'questions/create'
    get 'questions/edit'
    patch 'questions/update'
    delete 'questions/destroy'


  end

  devise_for :users
  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
