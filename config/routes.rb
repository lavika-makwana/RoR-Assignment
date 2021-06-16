Rails.application.routes.draw do
	scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'displays#index'

	  namespace :api, defaults: { format: :json } do
	    namespace :v1 do
	      resources :contacts	
	    end
	  end
	end
end
