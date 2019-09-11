class User < ApplicationRecord
    has_many :diaries, dependent: :destroy
    has_many :albums, dependent: :destroy

    has_secure_password
    
end
