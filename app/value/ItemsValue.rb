class ItemsValue
    attr_accessor :itemId, :name, :manufacturer, :categoryId, :color, :price, :stock, :recommended

  def initialize(itemId, name, manufacturer, categoryId, color, price, stock, recommended)
    @itemId = itemId
    @name = name
    @manufacturer = manufacturer
    @categoryId = categoryId
    @color = color
    @price = price
    @stock = stock
    @recommended = recommended
  end
end