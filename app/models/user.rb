class User < ApplicationRecord

  validates :email, presence: true,
                    uniqueness: true, 
                    :email_format => {:message => 'is not looking good'}
                    

end

