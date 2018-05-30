Rails.application.routes.draw do

  resources :establishments
  scope 'establishments/:establishment_id' do
    resources :studies, except: [:show]
    get 'studies/:id', to: 'studies#show', as: 'study_show'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
