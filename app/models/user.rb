class User < ApplicationRecord
    self.primary_key = :user_id

    has_many :items_in_carts
    has_many :purchases
end
