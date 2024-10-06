class ChangeColumnUsers < ActiveRecord::Migration[7.2]
  def change
    change_column_null :users, :user_id, false
    change_column_null :users, :password, false
  end
end
