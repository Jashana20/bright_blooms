class CreateConditions < ActiveRecord::Migration[6.0]

    def change 
        create_table :conditions do |t|
            t.string :climate
            t.string :soil
            t.string :propogation
       end
    end
    
end 