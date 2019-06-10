class CashRegister
   attr_accessor :total, :discount, :title, :price

  def initialize(discount = 0)
    @total = 0
    @discount = discount

  end

  def add_item(title, price, quantity = 1)
      @total = title * price
        if quantity > 1
          @total = title * price * quantity
        end
  end

end
