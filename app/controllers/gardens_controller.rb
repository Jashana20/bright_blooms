class GardensController < ApplicationController
    before_action :set_garden, only: [:show, :edit, :update, :destroy, :add_plant, :add_direct]
    before_action :authorize_user, only: [:new, :create, :edit,:update,:destroy, :add_plant, :add_direct]
    before_action :garden_belongs_to_current_user?, only: [:edit, :update, :destroy, :add_plant, :add_direct]
    def index
        @gardens = Garden.all
    end

    def new
        @garden = Garden.new
    end

    def show

    end

    def create 
        @garden = Garden.new(garden_params)
        @garden.user = current_user
        @garden.save
        @garden.plants << Plant.find(params[:garden][:plants].to_i)
        if @garden.valid?
          redirect_to gardens_path
        end
    end

    def show

    end

    def edit
        
    end

    def update
        @garden.update(garden_params)
        redirect_to garden_path(@garden.id)
    end

    def destroy
        @garden.destroy
        redirect_to gardens_path
    end

    def add_plant
         
    end

    def add_direct
        
        @garden.plants << Plant.find(params[:garden][:plant_ids])
        redirect_to garden_path(@garden)
    end

    private

    def set_garden
        @garden = Garden.find(params[:id])
    end

    def garden_params
        params.require(:garden).permit(:name, :category, :current_user)
    end 

    def garden_belongs_to_current_user?
        unless Garden.find(params[:id]).user == current_user
            flash[:notice] = "Please leave other people's gardens alone"
            redirect_to gardens_path
        end
    end
end 