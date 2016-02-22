require 'order'
require 'totals'

describe 'Coffee Till' do
  it 'Placing an order and receiving a grand total' do
    order_jane = Order.new
    order_jane.add_item("Cafe Latte", 2)
    order_jane.add_item("Blueberry Muffin", 1)
    order_jane.add_item("Choc Mudcake", 1)
    expect(order_jane.calculate_order).to eq(21.67)

  end
end
