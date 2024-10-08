class PurchasesDetailValue
    attr_accessor :itemId, :amount, :purchaseDetailId, :purchaseId, :items, :purchase
  
    def initialize(itemId, amount, purchaseDetailId, purchaseId, items, purchase)
      @itemId = itemId
      @amount = amount
      @purchaseDetailId = purchaseDetailId
      @purchaseId = purchaseId
      @items = items
      @purchase = purchase
    end
end
  