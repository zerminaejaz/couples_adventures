class Diary < ApplicationRecord
    belongs_to :user
    has_many :entries , dependent: :destroy
    has_many :pictures, through: :entries

    validates :name, :person1, :person2, presence: true
end
