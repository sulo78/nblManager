class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to notebooks_path, notice: "Sie haben sich angemeldet!"
    else
      flash.now.alert = "Fehler in Benutzername oder Passwort"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Sie haben sich abgemeldet!"
  end
end
