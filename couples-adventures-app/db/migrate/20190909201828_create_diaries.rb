class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :shipname
      t.string :password
      t.string :person1
      t.string :person2

      t.timestamps
    end
  end
end
