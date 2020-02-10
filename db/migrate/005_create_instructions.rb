class CreateInstructions < ActiveRecord::Migration[6.0]

    def change 
        create_table :instructions do |t|
           t.integer :plant_id
           t.integer :condition_id
       end
    end
    
end 