class User < ActiveRecord::Base
    
    has_many :gardens
    has_many :plants, through: :gardens

    has_secure_password
    validates_confirmation_of :password
    validates :email, {
        presence: true,
        uniqueness: true
    }
    validates :username, {
        presence: true,
        uniqueness: true
    }

    
    def full_name
        full_name = self.first_name + " " + self.last_name
    end

    def user_gardens
        @user_gardens = self.gardens
    end
end 