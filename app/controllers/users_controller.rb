# encoding: utf-8
class UsersController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /users/
  def index
    @users = User.all
  end

# GET /users/new
  def new
    @user = User.new
  end
  
# CRUD-Methoden  

# CREATE: POST /users  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path, :notice => "Das Benutzerkonto wurde angelegt!"
    else
      render "new"
    end
  end
  
# DESTROY: DELETE /users/1
  def destroy
    @user = User.find(params[:id])
      @user.destroy
        redirect_to users_path, :message => "Eintrag wurde erfolgreich glöscht"
  end  
    
end
