class GardenPlant < ActiveRecord::Base
    belongs_to :plant
    belongs_to :garden
end 