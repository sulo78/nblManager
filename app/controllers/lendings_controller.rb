class LendingsController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /lendings/index
  def index
    @location = Location.all
    @notebooks = Notebook.all
  end

# GET /lendings/new
  def new
    @lending = Lending.new
  end
end
