class Item < ApplicationRecord
    belongs_to :category, primary_key: :category_id

    self.primary_key = :item_id

    has_many :tems_in_carts
    has_many :purchase_details

    def self.findByName(name, categoryId)

        list = []

        #items = Item.left_outer_joins(:category).where("items.name LIKE ? and items.category_id = ?", "%#{@name}%", @category_id).order("items.item_id")
        
        items = Item.joins(:category).where("items.name LIKE ? and items.category_id = ?", "%#{@name}%", @category_id).order("items.item_id")

        items.find_each do |item|
            items = ItemsValue.new(
                item_id: item.item_id,
                name: item.name,
                manufacturer: item.manufacturer,
                categoryId: item.category_id,
                color: item.color,
                price: item.price,
                stock: item.stock,
                recommended: item.recommended,
                category_name: item.category.name
            )

            # categories = CategoriesValue.new(
            #     category_id: item.category.id,
            #     name: item.category.name
            # )

            list << items
        end

        list

    end

end
