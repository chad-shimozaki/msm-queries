class DirectorsController < ApplicationController
  def index
    @all_directors = Director.all

    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    
    matching_records = Director.where({ :id => the_id })

    @the_director = matching_records.at(0)

    render({ :template => "director_templates/details"})
  end

  def find_young
    directors_youngest_to_oldest = Director.where.not({ :dob => nil }).order({ :dob => :desc })
    @youngest = directors_youngest_to_oldest.at(0)

    render({ :template => "director_templates/youngest"})
  end

  def find_old
    directors_youngest_to_oldest = Director.where.not({ :dob => nil }).order({ :dob => :desc })
    @eldest = directors_youngest_to_oldest.at(-1)

    render({ :template => "director_templates/eldest"})
  end
end
