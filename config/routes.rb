Rails.application.routes.draw do
  resources :cocktails do
    resources :doses
  end
  # get 'cocktails', to: 'cocktails#index'
  # post 'cocktails', to: 'cocktails#create'
  # get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: :edit_cocktail
  # patch 'cocktails/:id', to: 'cocktails#update'
  # delete 'cocktails/:id', to: 'cocktails#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#home'
end
