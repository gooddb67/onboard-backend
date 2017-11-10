Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index, :update] do
        resources :rooms, only:[:create]
      end
      resources :questions, only: [:index, :create, :update]
      resources :posts, only: [:create, :update, :index]
      resources :rooms, only:[:index]
    end
  end
end
