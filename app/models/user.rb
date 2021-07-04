# email:string
# password_digest:string

# password:string virtual

class User < ApplicationRecord
    has_many :twitter_accounts
    has_many :tweets
    
    has_secure_password

    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
