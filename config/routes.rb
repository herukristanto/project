Rails.application.routes.draw do


  	# devise_for :admins

  	devise_for :admins, :skip => [:registrations] 
  	as :admin do
  	get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
  	put 'admins' => 'devise/registrations#update', :as => 'admin_registration'
	end

	root 'clients#index'
	# devise_for :admins
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	resources :clients	
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
