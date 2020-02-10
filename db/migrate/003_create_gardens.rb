class CreateGardens < ActiveRecord::Migration[6.0]

    def change 
        create_table :gardens do |t|
           t.string :name
           t.string :category
           t.integer :user_id
           t.integer :plant_id
       end
    end
    
end 