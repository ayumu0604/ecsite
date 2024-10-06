class Purchase < ApplicationRecord
    belongs_to :users, primary_key: :user_id

    self.primary_key = :purchase_id
    
    has_many :purchase_details
end
