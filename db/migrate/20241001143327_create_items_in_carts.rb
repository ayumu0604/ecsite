class CreateItemsInCarts < ActiveRecord::Migration[7.2]
  def change
    create_table :items_in_carts, id: false do |t|
      t.references :user, type: :string, null: false
      t.references :item, type: :integer, null: false
      t.integer :amount, null: false
      t.date :booked_date, null: false

      t.timestamps
    end
    add_foreign_key :items_in_carts, :users, column: :user_id , primary_key: :user_id
    add_foreign_key :items_in_carts, :items, column: :item_id , primary_key: :item_id
  end
end
