require 'totals'

describe 'Totals' do

  before(:each) do
    @current_order = [["Cafe Latte", 2, 4.75], ["Americano", 1, 3.75]]
  end

  subject(:totals) { Totals.new(@current_order) }

  it 'returns the sum of ordered items' do
    expect(totals.order_total).to eq(13.25)
  end

  it 'returns the tax amount of the order' do
    totals.order_total
    expect(totals.tax).to eq(1.14)
  end

  it 'adds tax to the order total' do
    expect(totals.grand_total).to eq(14.39)
  end
end
