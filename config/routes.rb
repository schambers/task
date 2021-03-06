ActionController::Routing::Routes.draw do |map|
  map.root :controller => "tasks"
  map.done '/tasks/:id/done', :controller => 'tasks', :action => 'done'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.resources :tasks
end
