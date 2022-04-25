class CreateMountains < ActiveRecord::Migration[6.1]
  def change
    create_table :mountains do |t|
      t.integer :user_id
      t.string :name
      t.string :season
      t.datetime :start
      t.datetime :end
      t.string :food
      t.integer :water
      t.string :others
      t.string :image_id
      t.text :body

      t.timestamps
    end
  end
end
