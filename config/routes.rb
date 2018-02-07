Rails.application.routes.draw do
  devise_for :users
  
	resources :recipes do 
		resources :comments, module: :recipes
	end
	root  to: "recipes#index"	
end
