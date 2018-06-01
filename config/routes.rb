Rails.application.routes.draw do

  root 'plannings#index'

  get 'instances/:id/pick', to: 'plannings#create', as: 'pick'
  delete 'instance/:id/pick', to: 'plannings#destroy', as: 'unpick'

  resources :establishments
  resources :studies, except: [:index]
  resources :instances, except: [:index]
  resources :lessons, except: [:index]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
