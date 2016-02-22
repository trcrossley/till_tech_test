require 'order'

describe 'Order' do

  it 'return a list of items' do
    order = Order.new
    expect(order.menu_list).to include("Tiramisu" => 11.40)
  end

  it 'shows an empty order' do
    order = Order.new
    expect(order.current_order).to eq([])
  end

  describe 'Placing an order' do

    it 'adds an item with price and amount to the order' do
      order = Order.new
      order.add_item("Tiramisu", 1)
      expect(order.current_order).to eq([["Tiramisu", 1, 11.4]])
    end
  end
end
