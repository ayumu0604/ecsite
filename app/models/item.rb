class Item < ApplicationRecord
    belongs_to :category, primary_key: :category_id

    self.primary_key = :item_id

    has_many :items_in_carts
    has_many :purchase_details

    def self.findByName(name, category_id)

        list = []

        items = Item.left_outer_joins(:category).where("items.name LIKE ? and items.category_id = ?", "%#{name}%", category_id).order("items.item_id")

        puts "SQL Query: #{items.to_sql}"
        
        items.find_each do |item|
            item_value = ItemsValue.new(
                item_id: item.item_id,
                name: item.name,
                manufacturer: item.manufacturer,
                categoryId: item.category_id,
                color: item.color,
                price: item.price,
                stock: item.stock,
                recommended: item.recommended,
                category_name: item.category&.name
            )

            # categories = CategoriesValue.new(
            #     category_id: item.category.id,
            #     name: item.category.name
            # )

            list << item_value
        end

        puts "Found items: #{list.inspect}"
        list

    end

end
