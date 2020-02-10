class InstructionsController < ApplicationController
    before_action :set_instruction, only [:show, :edit, :update, :destroy]

    def index
        @instructions = Instruction.all
    end

    def new
        @instruction = Instruction.new
    end

    def create 
        @instruction = Instruction.create(instruction_params(:plant_id, :condition_id))
        redirect_to instruction_path(@instruction)
    end

    def show
    end

    def edit
    end

    def update
        @instruction.update(instruction_params(:plant_id, :condition_id))
        redirect_to instruction_path(@instruction)
    end

    def delete
        @instruction.destroy
        redirect_to instructions_path
    end

    private

    def set_instruction
        @instruction = Instruction.find(params[:id])
    end

    def instruction_params(*args)
        params.require(:instruction).permit(*args)
    end 
end 