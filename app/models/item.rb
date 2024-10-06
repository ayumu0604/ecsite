class Item < ApplicationRecord
    belongs_to :category, primary_key: :category_id

    self.primary_key = :item_id

    has_many :tems_in_carts
    has_many :purchase_details
end
