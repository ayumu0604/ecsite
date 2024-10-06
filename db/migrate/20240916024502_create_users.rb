class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users, id: false do |t|
      t.string :user_id, primary_key: true
      t.index :user_id
      
      t.timestamps
    end
  end
end
