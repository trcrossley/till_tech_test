require 'json'
require 'totals'

class Order

  attr_reader :current_order

  def initialize
    @current_order = []
  end

  def menu_list
    file = File.read('hipstercoffee.json')
    details = JSON.parse(file)
    return details[0]['prices'][0]
  end

  def add_item(item, amount)
    @current_order << [item, amount, item_price(item)]
  end

  def calculate_order
    total = Totals.new(@current_order).grand_total
    return total
  end

  private

  def item_price(name)
    return menu_list[name]
  end

end
