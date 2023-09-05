Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get '/directors', to: 'directors#home'
  get 'directors/:id', to: 'directors#show'
end
