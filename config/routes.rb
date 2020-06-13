Rails.application.routes.draw do
  resources :project_professionals, only: [:create, :destroy]
  resources :projects, only: [:index,:create,:destroy,:update]
  resources :organizations, only: [:index, :create, :destroy, :update]
  resources :professionals, only: [:index, :create, :destroy, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
