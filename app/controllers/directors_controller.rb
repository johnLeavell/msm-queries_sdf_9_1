class DirectorsController < ApplicationController
  def home
    @directors = Director.all

    render template: "directors/home"
  end

  def show
    @the_director = Director.find(params[:id])
    @filmography = Movie.where( director_id: @the_director.id )
    
    render template: 'directors/show'
  end

  def oldest
    @eldest_director = Director.where.not( dob: nil ).order( dob: :asc).first

    render template: 'directors/oldest'
  end

  def youngest
    @youngest_director = Director.where.not( dob: nil ).order( dob: :desc ).first

    render template: 'directors/youngest'
  end

end
