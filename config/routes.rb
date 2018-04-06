Rails.application.routes.draw do
  resources :previous_cities
  root 'welcome#index'

  get 'index' => 'welcome#index'

  post 'index' => 'welcome#index'

  get 'test' => 'welcome#test'

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
