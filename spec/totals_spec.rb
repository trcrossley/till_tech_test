require 'totals'

describe 'Totals' do

  before(:each) do
    @current_order = [["Cafe Latte", 2, 4.75], ["Americano", 1, 3.75]]
  end

  subject(:totals) { Totals.new(@current_order) }

  it 'returns the sum of ordered items' do
    expect(totals.order_total).to eq(13.25)
  end
end
