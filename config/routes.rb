Rails.application.routes.draw do
<<<<<<< HEAD

	root "users#index"

  	get '/payments', to: 'payments#index'
	
	get '/chatroom', to: 'chat_rooms#show'

	resources :payments do
=======
  get '/', to: 'homes#index' # Home page
  get '/back', to: 'homes#index' # Back button option
  post '/login', to: 'homes#login'
  # Bangalore drop down navigation bar
  get '/moving_to', to: 'homes#moving_to'
  get '/what_to_do', to: 'homes#what_to_do'
  get '/life_in', to: 'homes#life_in'
  # Membership dropdown navigation bar
  get '/member_info', to: 'homes#member_info'
  get '/new_member', to: 'homes#new_member' # New Memeber Info, Benefits, etc.
  get '/renew', to: 'homes#renew' # Renew membership here
  # Our Work dropdown navigation bar
  get '/charities', to: 'homes#charities'
  get '/contributions', to: 'homes#contributions'
  get '/fundraising', to: 'homes#fundraising'
  get '/ssg', to: 'homes#ssg' # Social Support Group
  # About options bottom of page
  get '/owc_club_info', to: 'homes#owc_club_info'
  get '/mission_statement', to: 'homes#mission_statement'
  get '/journey', to: 'homes#journey'
  get '/contact', to: 'homes#contact'
  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  get '/payments', to: 'payments#index'
  		resources :payments do
>>>>>>> origin/master
		collection {post :import}
	end
	resources :users do
		collection {post :import}
	end

	resources :messages
	resources :conversations

  	resources :chat_rooms, only: [:new, :create, :show, :index]

  	mount ActionCable.server => '/cable'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
