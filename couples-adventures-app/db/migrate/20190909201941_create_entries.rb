class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.datetime :date
      t.string :title
      t.string :description
      t.belongs_to :picture, null: false, foreign_key: true
      t.belongs_to :diary, null: false, foreign_key: true

      t.timestamps
    end
  end
end
