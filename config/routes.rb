Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index"})

  get("/movies", { :controller => "movies", :action => "index"})

  get("/actors", { :controller => "actors", :action => "index"})
end
