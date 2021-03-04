class User < ApplicationRecord  
    has_many :leave
    validates :username,uniqueness:true

    before_create :add_role

    def add_role
        if self.role==nil
            self.role='student'          
        else
            self.room_no='0'
        end
    end
end
