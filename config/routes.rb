Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  # get    "cocktails",          to: "cocktails#index"
  # get    "cocktails/new",      to: "cocktails#new", as: :new_cocktail
  # post   "cocktails",          to: "cocktails#create"
  # get    "cocktails/:id",      to: "cocktails#show", as: :cocktail
  # post   "cocktails/:cocktail_id/doses", to: "doses#create", as: :cocktail_doses
  # delete "doses/:id", to: "doses#destroy"

  resources :cocktails, only: [:index, :new, :create]
  resources :doses, only: [:destroy]
  resources :cocktails, only: :show do
    resources :doses, only: :create
  end

end
