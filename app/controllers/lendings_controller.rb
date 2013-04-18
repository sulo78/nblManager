# encoding: utf-8
class LendingsController < ApplicationController

# Only signed in Users can access index
  before_filter :require_login

# HTTP-GET-Methoden (views)

# GET /lendings/index - zeigt alle Notebooks einer bestimmten Location
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
  
# GET /lendings/1/edit
  def edit
    @lending = Lending.find(params[:id])
  end

# CREATE: POST /lendings
  def create
    @user = current_user
    @lending = Lending.new(params[:lending])
    @notebook = Notebook.find(@lending.notebook_id)
      if @lending.save
          @notebook.update_attribute(:is_lent, true)  
            redirect_to lendings_path, :notice => "#{@notebook.nb_name} verliehen!"   	
      else
      	render "new"
      end
  end
  
# READ: GET /lendings/1/show
  def show
    @lending = Lending.find(params[:id])
  end  
  
  
  
# UPDATE: PUT /lendings/1
  def update
    @lending = Lending.find(params[:id])
      if @lending.update_attributes(params[:lending])
        redirect_to lendings_path, :notice => "Ausleihe von #{@lending.lender_name} geändert"
      else
      	render "edit"
      end
  end
   
# DESTROY: DELETE /notebooks/1
  def destroy
    @lending = Lending.find(params[:id])
    @notebook = Notebook.find(@lending.notebook_id)
      @notebook.update_attribute(:is_lent, false)  
        @lending.destroy
          redirect_to lendings_path, :notice => "#{@notebook.nb_name} zurückgegeben"
  end
end
