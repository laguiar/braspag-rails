ActionController::Routing::Routes.draw do |map|
  map.encrypt 'braspag/encrypt', :controller => :braspag, :action => :encrypt
end
