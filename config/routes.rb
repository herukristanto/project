Rails.application.routes.draw do

	root 'clients#index'
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :clients	
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
