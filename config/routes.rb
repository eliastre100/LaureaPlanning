Rails.application.routes.draw do

  resources :establishments
  resources :studies, except: [:index]
  resources :instances, except: [:index]
  resources :lessons, except: [:index]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
