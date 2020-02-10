class ConditionsController < ApplicationController
    before_action :set_condition, only [:show, :edit, :update, :destroy]

    def index
        @conditions = Condition.all
    end

    def new
        @condition = Condition.new
    end

    def create 
        @condition = Condition.create(condition_params(:climate, :soil, :propogation))
        redirect_to condition_path(@condition)
    end

    def show
    end

    def edit
    end

    def update
        @condition.update(condition_params(:climate, :soil, :propogation))
        redirect_to condition_path(@condition)
    end

    def delete
        @condition.destroy
        redirect_to conditions_path
    end

    private

    def set_condition
        @condition = Condition.find(params[:id])
    end

    def condition_params(*args)
        params.require(:condition).permit(*args)
    end 
end 