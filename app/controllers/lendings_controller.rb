class LendingsController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /lendings/index - zeigt alle Notebooks einer bestimmten Location
  def index
    @location = Location.all
    @notebooks = Notebook.all
  end

# GET /lendings/new
  def new
    @lending = Lending.new
    @notebook = Notebook.find(params[:notebook])      
  end
  
  def create
  end
  
end
