class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories, id: false do |t|
      t.integer :category_id, null: false, primary_key: true
      t.index ["category_id"], name: "index_categories_on_category_id"
      reversible do |r|
        r.up do
          execute "CREATE SEQUENCE SEQ_CAT_CATID"
        end
        r.down do
          execute "DROP SEQUENCE SEQ_CAT_CATID"
        end
      end
      t.string :name, null: false

      t.timestamps
    end
  end
end
