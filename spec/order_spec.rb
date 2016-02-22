require 'order'

describe 'Order' do

  it 'return a list of items' do
    order = Order.new
    expect(order.menu).to include("Tiramisu" => 11.40)
  end
end
