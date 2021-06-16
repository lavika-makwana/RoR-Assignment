Rails.application.routes.draw do
  # root to: 'displays#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :contact	
    end
  end
end
