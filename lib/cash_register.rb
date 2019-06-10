class CashRegister
   attr_accessor :total

  def initialize(total = 0, employee_discount)
    @total = total
    @employee_discount = employee_discount
  end

end
