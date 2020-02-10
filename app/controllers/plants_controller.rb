class PlantsController < ApplicationController
    before_action :set_plant, only [:show, :edit, :update, :destroy]

    def index
        @plants = Plant.all
    end

    def new
        @plant = Plant.new
    end

    def create 
        @plant = Plant.create(plant_params(:name, :plant_family, :origin, :environment))
        redirect_to plant_path(@plant)
    end

    def show
    end

    def edit
    end

    def update
        @plant.update(plant_params(:name, :plant_family, :origin, :environment))
        redirect_to plant_path(@plant)
    end

    def delete
        @plant.destroy
        redirect_to plants_path
    end

    private

    def set_plant
        @plant = Plant.find(params[:id])
    end

    def plant_params(*args)
        params.require(:plant).permit(*args)
    end 
end 