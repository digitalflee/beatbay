class ApplicationController < ActionController::Base

    #before_action :set_current_artist
    #before_action :authorized
    helper_method :current_user

    def current_user
      if session[:user_id]
        @current_user ||= Artist.find(session[:user_id])
      else
        @current_user = nil
      end
    end
  
    private
  
    def authorized
      if @current_artist == nil
        redirect_to login_path
      end
    end
  
    def set_current_artist
      @current_restaurant = Artist.find_by(id: session[:artist_id])
    end

end
