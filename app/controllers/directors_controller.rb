class DirectorsController < ApplicationController
  def home
    @directors = Director.all

    render({ template: "directors/home" })
  end

  def show
    the_id = params.fetch("id")
    @the_director = Director.where({ id: the_id }).first

    render({ template: 'directors/show' })
  end
end
