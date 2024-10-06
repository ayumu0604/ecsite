class CreatePurchaseDetails < ActiveRecord::Migration[7.2]
  def change
    create_table :purchase_details, id: false do |t|
      t.integer :purchase_detail_id, null: false, primary_key: true
      t.index ["purchase_detail_id"], name: "index_purchase_details_on_purchase_detail_id"
      reversible do |r|
        r.up do
          execute "CREATE SEQUENCE SEQ_PUR_DETAIL_ID"
        end
        r.down do
          execute "DROP SEQUENCE SEQ_PUR_DETAIL_ID"
        end
      end
      t.references :purchase, type: :integer, null: false
      t.references :item, type: :integer, null: false
      t.integer :amount, null: false

      t.timestamps
    end
    add_foreign_key :purchase_details, :purchases, column: :purchase_id , primary_key: :purchase_id
    add_foreign_key :purchase_details, :items, column: :item_id , primary_key: :item_id
  end
end
