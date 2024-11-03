class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/list"})
  end
end
