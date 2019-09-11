class Diary < ApplicationRecord
    belongs_to :user
    has_many :entries
    has_many :pictures, through: :entries

end
