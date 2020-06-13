Rails.application.routes.draw do
  resources :project_professionals, only: [:create, :destroy]
  resources :projects, only: [:index,:create,:destroy,:update]
  resources :organizations, only: [:index, :create, :destroy, :update]
  resources :professionals, only: [:index, :create, :destroy, :update]
  # custom routes for auth
  post "/org_login", to: "organizations#login"
  get "/org_persist", to: "organizations#persist"

  post "/professional_login", to: "professional#login"
  get "/professional_persist", to: "professional#persist"
end
