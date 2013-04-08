# encoding: utf-8
class LendingsController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /lendings/index
  def index
    @location = Location.all
    @notebooks = Notebook.all
    @lendings = Lending.all
  end

# GET /lendings/new
  def new
    @user = current_user
    @notebook = Notebook.find(params[:notebook_id])
    @lending = Lending.new
  end

# CREATE: POST /lendings
  def create
    @lending = Lending.new(params[:lending])
    @notebook = Notebook.find(@lending.notebook_id)
      if @lending.save
          @notebook.update_attribute(:is_lent, true)  
            redirect_to lendings_path, :notice => "Ausleihe erfolgreich!"   	
      else
      	render "new"
      end
  end
  
# DESTROY: DELETE /notebooks/1
  def destroy
    @lending = Lending.find(params[:id])
    @notebook = Notebook.find(@lending.notebook_id)
      @notebook.update_attribute(:is_lent, false)  
        @lending.destroy
          redirect_to lendings_path, :notice => "Notebook zurückgegeben"
  end
  
end
