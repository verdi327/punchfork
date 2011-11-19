Punchfork::Application.routes.draw do
 
 resources :searches
 root :to => "searches#index"
 
 
 
end
