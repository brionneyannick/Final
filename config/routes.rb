Rails.application.routes.draw do
  resources :companies do
    resources :claims, only: [:create, :destroy, :update, :edit]
  end
  devise_for :users

  root 'companies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
