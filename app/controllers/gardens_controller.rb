class GardensController < ApplicationController
    before_action :set_garden, only: [:show, :edit, :update, :destroy]

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
        @garden.update(garden_params(:name, :category, :user_id, :plant_id))
        redirect_to garden_path(@garden)
    end

    def delete
        @garden.destroy
        redirect_to gardens_path
    end

    private

    def set_garden
        @garden = Garden.find(params[:id])
    end

    def garden_params
        params.require(:garden).permit(:name, :category, :current_user)
    end 
end 