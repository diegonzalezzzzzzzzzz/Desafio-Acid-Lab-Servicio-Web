Rails.application.routes.draw do
  get 'welcome/index'

  resources :users

  get 'rest/login', to: 'authentication#new'

  post 'rest/login', to: 'authentication#login'

  get 'rest/login', to: 'authentication#invalid'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
