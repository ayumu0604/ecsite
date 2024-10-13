class ItemsValue
    attr_accessor :itemId, :name, :manufacturer, :categoryId, :color, :price, :stock, :recommended

  def initialize(item_id:, name:, manufacturer:, categoryId:, color:, price:, stock:, recommended:)
    @item_id = item_id
    @name = name
    @manufacturer = manufacturer
    @categoryId = categoryId
    @color = color
    @price = price
    @stock = stock
    @recommended = recommended
  end
end