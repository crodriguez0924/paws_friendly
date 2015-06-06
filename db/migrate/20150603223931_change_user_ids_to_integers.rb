class ChangeUserIdsToIntegers < ActiveRecord::Migration
  def change
    change_column :parks, :user_id, :integer
    change_column :restaurants, :user_id, :integer
    change_column :stores, :user_id, :integer
  end
end
