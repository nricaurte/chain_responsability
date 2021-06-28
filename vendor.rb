require './handler'

class Vendor < Handler

  def initialize nextHandler:""
    @nextHandler = nextHandler
  end

  def calculate_price(quantity, price)
    total = quantity * price
    puts " Vendedor"
    if quantity > 20 or price  > 2000
      return @nextHandler.calculate_price(quantity,price)
    else
      #Damos el 5%
      total*=0.95
    end
    p ">>>>>>"
    p total
  end


end