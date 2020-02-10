class User < ActiveRecord::Base
    has_many :gardens
    has_many :plants, through: :gardens
end 