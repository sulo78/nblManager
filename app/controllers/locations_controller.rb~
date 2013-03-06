# encoding: utf-8
class LocationsController < ApplicationController

# HTTP-GET-Methoden

# GET /locations/index
  def index
    @locations = Location.all
  end
  
# GET /locations/new
  def new
    @location = Location.new
  end
  
# GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

# CRUD-Methoden
  
# CREATE: POST /locations
  def create
    @location = Location.new(params[:location])
      if @location.save
        redirect_to locations_path, notice: 'Standort erfolgreich hinzugefügt.'
      else
        render "new"
      end
  end

# READ: wird nicht benötigt

# UPDATE: PUT /locations/1
  def update
    @location = Location.find(params[:id])
      if @location.update_attributes(params[:location])
        redirect_to locations_path, notice: 'Eintrag wurde erfolgreich geändert.'
      else
        render "edit"
      end
  end
  
# DESTROY: DELETE /locations/1
  def destroy
    @location = Location.find(params[:id])
      @location.destroy
        redirect_to locations_path, notice: 'Eintrag wurde erfolgreich gelöscht.'
  end

end  #end of class
