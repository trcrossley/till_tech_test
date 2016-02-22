class Totals

  def initialize(current_order)
    @order_total = 0
    @order = current_order
  end

  def order_total
    @order.each do |x|
      @order_total += (x[1] * x[2])
    end
    return @order_total
  end

end
