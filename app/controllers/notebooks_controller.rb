# encoding: utf-8
class NotebooksController < ApplicationController

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
        redirect_to notebooks_path, :message => "Notebook erfolgreich gespeichert!"   	
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
        redirect_to notebooks_path, :message => "Notebook erfolgreich geändert"
      else
      	render "edit"
      end
  end
  
# DESTROY: DELETE /notebooks/1
  def destroy
    @notebook = Notebook.find(params[:id])
      @notebook.destroy
        redirect_to notebooks_path, :message => "Eintrag wurde erfolgreich glöscht"
  end
  
end  #end of class
