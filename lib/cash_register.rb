class CashRegister
   attr_accessor :total, :discount, :items, :price, :new_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
     if quantity > 1
      counter = 0
     while counter < quantity
       @items << item
       counter += 1
     end
   else
     @items << item
   end
  end

  def apply_discount(new_total)
    if @discount > 0
      @new_total = @total - (@total * @discount)/100
       return "After the discount, the total comes to $#{new_total}."
    else
       return "There is no discount to apply."
    end
  end

  def void_last_transaction

  end

end
