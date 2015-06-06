class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name
      t.text :address
      t.text :neighborhood
      t.integer :rating
      t.text :comments
      t.integer :user_id

      t.timestamps

    end
  end
end
