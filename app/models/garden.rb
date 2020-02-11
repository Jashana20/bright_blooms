class Garden < ActiveRecord::Base
    belongs_to :user
    has_many :garden_plants
    has_many :plants, through: :garden_plants

    def garden_plants
        @plants = Garden.plants
    end
end 


