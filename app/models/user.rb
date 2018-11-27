class User < ApplicationRecord
    has_many :posts
    has_secure_password
    validates :username, uniqueness: true 
    validates :password, presence: true, allow_nil: true
    validates :email, uniqueness: true
end
