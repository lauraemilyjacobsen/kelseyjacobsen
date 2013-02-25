ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pictures'
  map.connect 'pictures/set_as_front_page/:id',
    :controller => 'pictures', :action => 'set_as_front_page'
  map.connect 'pictures/admin_show/:id',
    :controller => 'pictures', :action => 'admin_show'
  map.admin 'admin', :controller => 'admin'
  map.login 'admin/login', :controller => 'admin', :action => 'login'
  map.logout 'admin/logout', :controller => 'admin', :action => 'logout'
  map.resources :users
  map.resources :pictures
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
