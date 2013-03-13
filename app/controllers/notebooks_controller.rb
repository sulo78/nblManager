# encoding: utf-8
class NotebooksController < ApplicationController

# Only Admin has access to this controller - method require_admin at the bottom...
  before_filter :require_admin

# HTTP-GET-Methoden (views)

# GET /notebooks/index
  def index
    @notebooks = Notebook.all
  end

# GET /notebooks/new
  def new
    @notebook = Notebook.new
  end

# GET /notebooks/1/edit
  def edit
    @notebook = Notebook.find(params[:id])
  end

# CRUD-Methoden

# CREATE: POST /notebooks
  def create
    @notebook = Notebook.new(params[:notebook])
      if @notebook.save
        redirect_to notebooks_path, :notice => "Notebook erfolgreich gespeichert!"   	
      else
      	render "new"
      end
  end

# READ: GET /notebooks/1/show
  def show
    @notebook = Notebook.find(params[:id])
  end
  
# UPDATE: PUT /notebooks/1
  def update
    @notebook = Notebook.find(params[:id])
      if @notebook.update_attributes(params[:notebook])
        redirect_to notebooks_path, :notice => "Notebook erfolgreich geändert"
      else
      	render "edit"
      end
  end
  
# DESTROY: DELETE /notebooks/1
  def destroy
    @notebook = Notebook.find(params[:id])
      @notebook.destroy
        redirect_to notebooks_path, :notice => "Eintrag wurde erfolgreich glöscht"
  end
  
# only admin can use this controller
private

  def require_admin
    unless admin_signed_in?
      redirect_to login_path, :alert => "Bitte als Admin anmelden!"
    end
  end
  
end  #end of class
