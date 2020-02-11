class Plant < ActiveRecord::Base
    has_many :gardens
    has_many :users, through: :gardens
 

    def show_all_plants
        url = RestClient.get('http://tropicalfruitandveg.com/api/tfvjsonapi.php?search=all')
        @plant = JSON.parse(url)
    end

    def self.plant_names
        url = RestClient.get('http://tropicalfruitandveg.com/api/tfvjsonapi.php?search=all')
        @plant = JSON.parse(url).shift[1]
    end
end 