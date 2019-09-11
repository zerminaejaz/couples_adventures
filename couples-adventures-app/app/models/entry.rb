class Entry < ApplicationRecord
  belongs_to :diary
  belongs_to :picture
  has_many :albums, through: :pictures
end
