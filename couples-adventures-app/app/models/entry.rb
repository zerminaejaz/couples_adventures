class Entry < ApplicationRecord
  belongs_to :diary
  belongs_to :picture
  has_many :albums, through: :pictures

  validates :date, :title, :description, :picture_id, :diary_id

end
