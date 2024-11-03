class DirectorsController < ApplicationController
  def index
    @all_directors = Director.all

    render({ :template => "director_templates/list"})
  end
end
