class Instruction < ActiveRecord::Base
    belongs_to :plant
    belongs_to :condition
end 