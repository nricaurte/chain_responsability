require './handler'

class Owner < Handler

  def calculate_price(quantity, price)
    total = quantity * price
    puts "Handler Propietario"
    #Damos el 15%
    total*=0.85
    total
  end
end
