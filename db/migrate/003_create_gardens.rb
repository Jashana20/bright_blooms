class CreateGardens < ActiveRecord::Migration

    def change 
        create_table :gardens do |t|
           t.string :name
           t.integer :user_id
           t.integer :plant_id
       end
    end
    
end 