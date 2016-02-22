require 'json'

class Order

  def menu
    file = File.read('hipstercoffee.json')
    details = JSON.parse(file)
    details[0]['prices'][0]
  end
end
