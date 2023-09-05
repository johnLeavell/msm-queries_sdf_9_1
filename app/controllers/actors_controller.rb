class ActorsController < ApplicationController
  def home
    @actors = Actor.all
    render template: "actors/home"
  end

  def show
    @the_actor = Actor.find(params[:id])
    @characters = Character.where( actor_id: @the_actor )

    render template: 'actors/show'
  end
  
end
