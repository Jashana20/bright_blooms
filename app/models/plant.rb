class Plant < ActiveRecord::Base
    has_many :gardens
    has_many :users, through: :gardens
    has_many :instructions
    has_many :conditions, through: :instructions

    def self.show_all_plants

        
    end
end 