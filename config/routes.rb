Rails.application.routes.draw do

  	root 'welcome#home'
	get 'about', to: 'welcome#about'


	devise_scope :user do
	    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
	    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
	    get 'users/edit' => 'devise/registrations#edit', :as => :edit_user_registration
  	end
  	devise_for :users
  	resources :tests
  	resources :items
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
