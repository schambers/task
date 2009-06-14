ActionController::Routing::Routes.draw do |map|
  map.resources :tasks
  map.root :controller => "tasks"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
