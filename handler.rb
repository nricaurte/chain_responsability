class Handler

  def calculate_price(quantity, price)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

end