Rails.application.routes.draw do
  namespace :auth do
    get 'dashboard/index'

    get 'responses/index'
    get 'responses/show'
    get 'responses/new'
    post 'responses/create'

    get 'questions/index'
    get 'questions/show'
    get 'questions/new'
    post 'questions/create'

  end

  devise_for :users
  get 'pages/home'

  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
