class Diary < ApplicationRecord
    has_many :entries
    has_many :pictures, through: :entries
    
end
