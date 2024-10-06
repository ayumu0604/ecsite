class ItemsInCart < ApplicationRecord

    belongs_to :user, primary_key: :user_id
    belongs_to :item, primary_key: :item_id
    
end
