class EntriesController < ApplicationController

def show
  @entry = Entry.find_by({"id" => params["id"]})
  @place = Place.find_by({"id" => @entry["place_id"]})

end


def new
@entry = Entry.new
@place = Place.find_by({"id" => params["place_id"]})
@place_id = params["place_id"]

end

def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["posted_on"] = params["posted_on"]
  @entry["place_id"] = params["place_id"]
 

  @entry.save
  #send them back
  redirect_to "/places"

end



end
