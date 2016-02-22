require 'order'

class Till

  def initialize
    @current_order = Order.new
  end

  def pay(amount)
    if amount >= @current_order.calculate_order
      calculate_change(amount)
      return "Transaction Accepted"
    else
      raise "Need more money"
    end
  end

  def change
    return @change
  end




  def calculate_change(amount)
    @change = amount - @current_order.calculate_order
  end

end
