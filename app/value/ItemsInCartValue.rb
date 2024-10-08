class ItemsInCartValue
    attr_accessor :useId, :itemId, :amount, :bookedDate, :items
  
    def initialize(useId, itemId, amount, bookedDate, items)
      @useId = useId
      @itemId = itemId
      @amount = amount
      @bookedDate = bookedDate
      @items = items
    end
end
  