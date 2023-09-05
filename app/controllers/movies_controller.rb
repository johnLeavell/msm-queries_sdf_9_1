class MoviesController < ApplicationController
  def home
    @movies = Movie.all

    render template: "movies/home"
  end

  def show 
    @the_movie = Movie.find(params[:id])
    @the_director = Director.where( id: @the_movie.director_id).first
    
    render template: 'movies/show'
  end
end
