Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :show, :index, :update] do
        resources :rooms, only:[:create, :destroy, :update]
      end
      resources :questions, only: [:index, :create, :update]
      resources :answers, only: [:create, :update]
      resources :posts, only: [:create, :update, :index]
      resources :rooms, only:[:index, :show] do
        resources :companies, only:[:index, :create, :show, :update] do
          resources :questions, only:[:index, :create]
        end
      end
    end
  end
end
