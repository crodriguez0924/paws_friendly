class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.integer :rating
      t.text :comments
      t.text :name
      t.text :address
      t.text :neighborhood
      t.string :user_id

      t.timestamps

    end
  end
end
