class Entry < ApplicationRecord
  belongs_to :diary
  belongs_to :picture
  has_many :albums, through: :pictures
  

  validates :date, :title, :description, :picture_id, :diary_id, presence: true
    
  
  def parsed_date
      self.date.strftime('%D')
  end

end
