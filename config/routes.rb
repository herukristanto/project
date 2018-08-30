Rails.application.routes.draw do

	# namespace :api do
	# 	namespace :v1 do
	# 		resources :clients do
	# 			resources :projeks
	# 		end
	# 	end
	# end
	# resources :clients
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :clients
	# resources :projeks	
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
