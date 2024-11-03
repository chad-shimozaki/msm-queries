class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/list"})
  end
end
