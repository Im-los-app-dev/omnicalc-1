Rails.application.routes.draw do

  get( "/square/new", { :controller => "application", :action => "blank_square_form" })
  get( "/square/results", { :controller => "application", :action => "calculate_square" })
  get( "/square/new", { :controller => "", :action => "" })
  get( "/square/new", { :controller => "", :action => "" })
  get( "/", { :controller => "application", :action => "homepage" })


end
