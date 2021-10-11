Rails.application.routes.draw do
  resources :titles
  resources :ratings
  resources :principals
  resources :names
  resources :crews
  resources :basics, param: :tconst
  root "welcome#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
