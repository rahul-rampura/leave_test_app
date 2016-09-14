Rails.application.routes.draw do

get   '/login', :to => 'sessions#new', :as => :login
match '/auth/:provider/callback', :to => 'sessions#create'
match '/auth/failure', :to => 'sessions#failure'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
