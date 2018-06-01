Rails.application.routes.draw do

  root 'plannings#index'

  get 'instances/:id/pick', to: 'plannings#create', as: 'pick'
  delete 'instance/:id/pick', to: 'plannings#destroy', as: 'unpick'

  get 'edition', to: 'editions#create', as: 'enable_edition'
  delete 'edition', to: 'editions#destroy', as: 'disable_edition'

  resources :establishments
  resources :studies, except: [:index]
  resources :instances, except: [:index]
  resources :lessons, except: [:index]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
