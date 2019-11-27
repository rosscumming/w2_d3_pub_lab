class Customer

  attr_reader :name, :customer_cash

  def initialize(name, customer_cash)
    @name = name
    @customer_cash = customer_cash
  end

  # def drink_purchased(price)
  #   @cash -= @drinks.price
  # end
  #

  def reduce_cash(drink)
    @customer_cash -= drink.price
  end




end
