class CreatePlants < ActiveRecord::Migration

    def change 
        create_table :plants do |t|
           t.string :name
           t.string :plant_family
           t.string :origin
           t.string :environment
        end
    end
    
end 