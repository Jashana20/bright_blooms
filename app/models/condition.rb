class Condition < ActiveRecord::Base
    has_many :instructions
    has_many :plants, through: :instructions
end 