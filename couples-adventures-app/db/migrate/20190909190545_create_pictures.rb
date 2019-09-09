class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :title
      t.datetime :date
      t.belongs_to :entry, null: false, foreign_key: true

      t.timestamps
    end
  end
end
