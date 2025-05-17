class EntriesController < ApplicationController

def index
  @entries = Entry.all
end





def create
  @entry = Entry.new
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["occurred_on"] = params["occurred_on"]
  @entry.save
  redirect_to "/entries"
end

end
