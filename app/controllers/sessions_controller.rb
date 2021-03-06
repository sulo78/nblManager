class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      if admin_signed_in?
        redirect_to notebooks_path, :notice => "Comtrya!"
      else
        redirect_to lendings_path, :notice => "Comtrya!"
      end
    else
      flash.now.alert = "Fehler in Benutzername oder Passwort"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Du hast dich abgemeldet!"
  end
end
