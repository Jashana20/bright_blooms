class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create 

        @user = User.new(user_params)
        @user.email.downcase!

        
            if @user.save
              flash[:notice] =  "User successfully created!"
              redirect_to user_path(@user)
            else
              flash[:notice] = @user.errors.messages
              render :new
            end         
    end

    def show
    end

    def edit
    end

    def update
        @user.update(user_params(:first_name, :last_name, :username, :password, :password_confirmation, :email, :bio, :country))
        redirect_to user_path(@user)
    end

    def delete
        @user.destroy
        redirect_to users_path
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:first_name, :last_name, :username, :password, :password_confirmation, :email, :bio, :country)
    end  
end 