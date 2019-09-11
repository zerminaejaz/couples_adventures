class Album < ApplicationRecord
    belongs_to :user
    has_many :pictures
    has_many :entries, through: :pictures
end
