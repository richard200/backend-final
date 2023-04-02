class User < ApplicationRecord
    has_secure_password

    has_many :recipes
    has_many :reviews
    has_many :categories, through: :recipes
end
