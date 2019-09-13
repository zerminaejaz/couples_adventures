class User < ApplicationRecord
    has_many :diaries, dependent: :destroy
    has_many :albums, dependent: :destroy

    has_secure_password

    validates :name, :password, presence: true
    
    
end
