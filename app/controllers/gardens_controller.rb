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
        @garden = Garden.create(garden_params(:name, :category, :user_id, :plant_id))
        redirect_to garden_path(@garden)
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

    def garden_params(*args)
        params.require(:garden).permit(*args)
    end 
end 