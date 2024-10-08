class PurchasesValue
    attr_accessor :purchaseId, :purchasedUser, :purchasedDate, :destination, :cancel, :detail
  
    def initialize(purchaseId, purchasedUser, purchasedDate, destination, cancel, detail)
      @purchaseId = purchaseId
      @purchasedUser = purchasedUser
      @purchasedDate = purchasedDate
      @destination = destination
      @cancel = cancel
      @detail = detail
    end
end
  