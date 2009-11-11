ActionController::Routing::Routes.draw do |map|
  map.encrypt 'braspag/encrypt', :controller => :braspag, :action => :encrypt
  map.buy 'braspag/buy', :controller => :braspag, :action => :buy
end
