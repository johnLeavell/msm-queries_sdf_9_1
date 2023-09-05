Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get '/directors', to: 'directors#home'
  get '/directors/eldest', to: 'directors#oldest'
  get '/directors/youngest', to: 'directors#youngest'
  get '/directors/:id', to: 'directors#show'

  get '/movies', to: 'movies#home'
  get '/movies/:id', to: 'movies#show'

  get '/actors', to: 'actors#home'
  get '/actors/:id', to: 'actors#show'

end
