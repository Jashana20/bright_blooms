class CreateConditions < ActiveRecord::Migration

    def change 
        create_table :conditions do |t|
           t.integer :sunlight_exposure
           t.string :sunlight_exposure_type
           t.string :watering_interval
           t.integer :weekly_water_volume
           t.string :soil_type
       end
    end
    
end 