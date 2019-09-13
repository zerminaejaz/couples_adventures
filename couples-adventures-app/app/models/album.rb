class Album < ApplicationRecord
    belongs_to :user
    has_many :pictures, dependent: :destroy
    has_many :entries, through: :pictures

    validates :name, :user_id, presence: true

end
