require 'till'

describe 'Till' do

  context 'accepts payment' do

  subject(:till) { Till.new }
  let(:current_order) { double :current_order, calculate_order: 20 }

    it 'and confirms if enough money has been paid' do
      expect(till.pay(20)).to eq('Transaction Accepted')
    end

    it 'and raises an error if not enough money' do
      till.instance_variable_set(:@current_order, current_order)
      expect{till.pay(15)}.to raise_error('Need more money')
    end
  end
end
