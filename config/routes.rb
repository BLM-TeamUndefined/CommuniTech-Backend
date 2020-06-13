Rails.application.routes.draw do
  resources :project_professionals, only: [:create, :destroy]
  resources :projects, only: [:index,:create,:destroy,:update]
  resources :organizations, only: [:index, :create, :destroy, :update]
  resources :professionals, only: [:index, :create, :destroy, :update]
  # custom routes for auth
  post "/org_login", to: "organizations#login"
  get "/org_persist", to: "organizations#persist"

  post "/professional_login", to: "professionals#login"
  get "/professional_persist", to: "professionals#persist"
end
