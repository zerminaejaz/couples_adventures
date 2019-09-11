class Diary < ApplicationRecord
    belongs_to :user
    has_many :entries , dependent: :destroy
    has_many :pictures, through: :entries

end
