class ItemsValue
    attr_accessor :item_id, :name, :manufacturer, :category_id, :color, :price, :stock, :recommended

  def initialize(item_id:, name:, manufacturer:, categoryId:, color:, price:, stock:, recommended:)
    @item_id = item_id
    @name = name
    @manufacturer = manufacturer
    @category_id = category_id
    @color = color
    @price = price
    @stock = stock
    @recommended = recommended
  end
end