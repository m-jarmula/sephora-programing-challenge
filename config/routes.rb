Rails.application.routes.draw do
  root to: 'spa#index'

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end
end
