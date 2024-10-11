class Item < ApplicationRecord
    belongs_to :category, primary_key: :category_id

    self.primary_key = :item_id

    has_many :tems_in_carts
    has_many :purchase_details

    #list宣言
    def findByName(name, categoryId)

        list = []

        items = ItemsValue.new()

        #データの追加

        Item.left_outer_joins(:categories).where("name LIKE ? and category_id = ?", "%#{items.name}%", cagory.category_id)
    end

end
