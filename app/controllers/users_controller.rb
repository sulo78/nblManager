class UsersController < ApplicationController

# HTTP-GET-Methoden (views)

# GET /users/index
  def index
    @users = User.all
  end

# GET /users/new
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end  
  
# CRUD-Methoden  
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to users_path, :notice => "Das Benutzerkonto wurde angelegt!"
    else
      render "new"
    end
  end
end
