class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.datetime :date
      t.string :url
      t.belongs_to :album, null: false, foreign_key: true

      t.timestamps
    end
  end
end
