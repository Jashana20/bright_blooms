class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(username: params[:login][:username].downcase)

        if @user && @user.authenticate(params[:login][:password]) 
            session[:user_id] = @user.id
            redirect_to user_path(@user), notice: 'Successfully logged in!'
        else
            flash.now.alert = "Incorrect email or password, try again."
            render :new
      end
       
    end

    def destroy
        session.destroy
        redirect_to login_path, notice: "Logged out!"
    end
end