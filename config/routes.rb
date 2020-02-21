Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, except: [ :update, :edit, :destroy ] do
    resources :doses, only: [ :create ]
  end
  resources :doses, only: [ :destroy ]
  root to: 'cocktails#index'
end
