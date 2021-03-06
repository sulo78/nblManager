Nblmanager::Application.routes.draw do

# locations_controller

#  get "locations" => "locations#index", :as => "locations"		#Standortliste, "views/locations/index.html.erb"
#  get "locations/new" => "locations#new", :as => "new_location"	#Standort hinzufügen "views/locations/new.html.erb"
#  post "locations" => "locations#create"				#Standort erstellen
#  get "locations/:id/edit" => "locations#edit", :as => "edit_location"	#Standort bearbeiten "views/locations/edit.html.erb"
#  put "/locations/:id" => "locations#update"				#Standort aktualisieren
#  delete "/locations/:id" => "locations#destroy"			#Standort löschen
    
# pools_controller

#  get "pools" => "pools#index", :as => "pools"				#Poolliste, "views/pools/index.html.erb"
#  get "pools/new" => "pools#new", :as => "new_pool"			#Pool hinzufügen "views/pools/new.html.erb"
#  post "pools" => "pools#create"					#Pool erstellen
#  get "pools/:id/edit" => "pools#edit", :as => "edit_pool"		#Pool bearbeiten "views/pools/edit.html.erb"
#  put "/pools/:id" => "pools#update"					#Pool aktualisieren
#  delete "/pools/:id" => "pools#destroy"				#Pool löschen

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  # use 'resources' for RESTful routes
  resources :locations, :pools, :notebooks, :users, :sessions, :lendings
  
#  resources :notebooks do
#    resources :lendings
#  end

  
end  #end of routes
