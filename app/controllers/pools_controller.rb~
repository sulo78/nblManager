# encoding: utf-8
class PoolsController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /pools/index
  def index
    @pools = Pool.all
  end

# GET /pools/new
  def new
    @pool = Pool.new
  end

# GET /pools/1/edit
  def edit
    @pool = Pool.find(params[:id])
  end
  
# CRUD-Methoden

# CREATE: POST /pools
  def create
    @pool = Pool.new(params[:pool])
      if @pool.save
        redirect_to pools_path, notice: 'Pool erfolgreich hinzugefügt.'
      else
        render "new"
      end
  end
  
# READ: wird nicht benötigt
  
# UPDATE: PUT /pools/1
  def update
    @pool = Pool.find(params[:id])
      if @pool.update_attributes(params[:pool])
        redirect_to pools_path, notice: 'Eintrag wurde erfolgreich geändert.'
      else
        render "edit"
      end
  end
  
# DESTROY: DELETE /pools/1
  def destroy
    @pool = Pool.find(params[:id])
      @pool.destroy
        redirect_to pools_path, notice: 'Eintrag wurde erfolgreich gelöscht.'
  end  
  
end  # end of class
