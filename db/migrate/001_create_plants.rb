class CreatePlants < ActiveRecord::Migration[6.0]

    def change 
        create_table :plants do |t|
           t.string :tfvname
           t.string :botname
           t.string :othname
           t.string :image_url
           t.string :description
           t.string :uses
           t.string :health
        end
    end
end 