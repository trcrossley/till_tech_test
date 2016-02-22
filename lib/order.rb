require 'json'

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
    @current_order << [item, amount]
  end

  def item_price(name)
    return menu_list[name]
  end

  private


end
