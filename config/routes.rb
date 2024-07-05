Rails.application.routes.draw do
  resources :users, only: [:index, :create, :new] do
    collection do
      get 'filter'
    end
  end
  root 'home#index'
end
