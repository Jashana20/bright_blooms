class User < ActiveRecord::Base
    
    has_many :gardens
    has_many :plants, through: :gardens

    has_secure_password
    validates :email, {
        presence: true,
        uniqueness: true
    }

    validates_confirmation_of :password
    

    def full_name
        full_name = self.first_name + " " + self.last_name
    end
end 