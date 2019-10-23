class SessionsController < ApplicationController

  def new
  end

  # def create
  #   @artist = Artist.find_by(name: params[:name])
  #   if @artist && @artist.authenticate(params[:password])
  #     redirect_to @artist
  #   else
  #     redirect_to login_path
  #   end
  # end

  def create
    artist = Artist.find_by_name(params[:name])
    if artist && artist.authenticate(params[:password])
      session[:user_id] = artist.id
      redirect_to "/", notice: "Logged in!"
    else
      flash.now[:alert] = "Name or password is invalid" 
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to "/", notice: "Logged out!"
  end


end
