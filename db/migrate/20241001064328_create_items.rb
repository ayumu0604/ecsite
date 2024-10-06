class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items, id: false do |t|
      t.integer :item_id, null: false, primary_key: true
      t.index ["item_id"], name: "index_items_on_item_id"
      reversible do |r|
        r.up do
          execute "CREATE SEQUENCE SEQ_ITEMS_ITEMID"
        end
        r.down do
          execute "DROP SEQUENCE SEQ_ITEMS_ITEMID"
        end
      end

      t.string :name, null: false
      t.string :manufacturer
      t.references :category, type: :integer, null: false
      t.string :color
      t.integer :price, null: false, default: 0
      t.integer :stock, null: false, default: 0
      t.boolean :recommended, null: false, default: false

      t.timestamps
    end
    add_foreign_key :items, :categories, column: :category_id , primary_key: :category_id
  end
end
