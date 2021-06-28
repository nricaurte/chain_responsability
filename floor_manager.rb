require './handler'

class FloorManager < Handler

  def initialize(nextHandler:"")
    @nextHandler = nextHandler
  end

  def calculate_price(quantity, price)
    total = quantity * price
    puts "Handler Jefe de piso"
    if quantity > 100 or price  > 75000
      return @nextHandler.calculate_price(quantity,price)
    else
      #Damos el 10%
      total*=0.9
    end
    total
  end

end