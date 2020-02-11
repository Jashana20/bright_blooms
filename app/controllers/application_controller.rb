class ApplicationController < ActionController::Base

    helper_method :current_user
    helper_method :curre_plant

    def current_user
      if session[:user_id]
        User.find(session[:user_id])
      end
    end
end
