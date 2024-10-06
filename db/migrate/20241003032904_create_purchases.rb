class CreatePurchases < ActiveRecord::Migration[7.2]
  def change
    create_table :purchases, id: false do |t|
      t.integer :purchase_id, null: false, primary_key: true
      reversible do |r|
        r.up do
          execute "CREATE SEQUENCE SEQ_PURCHASE_ID"
        end
        r.down do
          execute "DROP SEQUENCE SEQ_PURCHASE_ID"
        end
      end

      t.string :purchased_user, type: :string, null: false
      t.date :purchased_date, null: false
      t.string :destination
      t.boolean :cancel, null: false

      t.timestamps
    end 
    add_foreign_key :purchases, :users, column: :purchased_user, primary_key: :user_id
  end
end
