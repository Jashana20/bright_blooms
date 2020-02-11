class SessionsController < ApplicationController


    def new

    end

    def create
       
    end

    def destroy
        session.destroy

        redrect_to new_session_path
    end
end