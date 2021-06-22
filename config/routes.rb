Rails.application.routes.draw do
	scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do
    root to: 'contacts#index'
		resources :contacts, only: [:index, :new, :create]
		match "/404", to: "errors#not_found", via: :all
	  match "/500", to: "errors#internal_server_error", via: :all
	end
end
