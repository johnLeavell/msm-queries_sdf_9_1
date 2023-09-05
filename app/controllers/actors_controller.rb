class ActorsController < ApplicationController
  def home
    @actors = Actor.all
    render template: "actors/home"
  end

  def show
    @the_actor = Actor.find(params[:id])
    render template: 'actors/show'
  end
  
end
