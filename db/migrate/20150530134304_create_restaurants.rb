class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.text :name
      t.text :address
      t.text :neighborhood
      t.integer :rating
      t.text :comments
      t.string :user_id

      t.timestamps

    end
  end
end
