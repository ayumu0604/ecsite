class AddIndexToPurchases < ActiveRecord::Migration[7.2]
  def change
    add_index :purchases, :purchase_id
    add_index :purchases, :purchased_user
  end
end
