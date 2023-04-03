class User < ApplicationRecord
    has_secure_password

    has_many :recipes
    has_many :reviews
    has_many :categories, through: :recipes

    validates :username, { 
        length: { minimum: 5, maximum: 8 }, 
        uniqueness: true,
        presence: true 
    } 
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
end
