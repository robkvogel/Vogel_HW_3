class PlacesController < ApplicationController

  def index

    @places = Place.all
    
  end

  def show
    @place = Place.find_by("id" => params["id"])

    @entries = Entry.where("place_id" => @place.id)
  end


  def new
    @place = Place.new
  end


  def create
    #create a new place
    @place = Place.new
    @place["name"] = params["name"]

    #save place
    @place.save

    #send them back
    redirect_to "/places"
  end

end

