require 'json'

class Order

  attr_reader :current_order

  def initialize
    @current_order = []
  end

  def menu
    file = File.read('hipstercoffee.json')
    details = JSON.parse(file)
    details[0]['prices'][0]
  end


end
