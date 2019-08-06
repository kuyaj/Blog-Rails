Rails.application.routes.draw do
  root 'character#index'
  get 'character/:id', to: 'character#show', as: :show_post
  delete "character/:id", to: 'character#destroy', as: :delete_post

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
