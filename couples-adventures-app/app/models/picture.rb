class Picture < ApplicationRecord
    belongs_to :album
    has_many :entries, dependent: :destroy

    validates :date, :url, :album_id, presence: true

    def parsed_date
        self.date.strftime('%D')
    end

end
