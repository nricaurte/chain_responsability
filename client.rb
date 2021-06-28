require './vendor'
require './floor_manager'
require './owner'

class Client

  #Atorizar un descuento al cliente dependiente de rol que ocupe en una tienda
  def main
    owner = Owner.new
    floor_manager = FloorManager.new(nextHandler:owner)
    vendor = Vendor.new(nextHandler:floor_manager)

    quantity = 21
    p "Cantidad #{quantity}"
    price= 10000000
    p "Precio #{price}"
    price_f = vendor.calculate_price(quantity, price)
    p "Total a cobrar: #{price_f}"
  end

end

Client.new.main()