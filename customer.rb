class Customer

  attr_reader :name, :wallet

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  # def drink_purchased(price)
  #   @cash -= @drinks.price
  # end
  #

  def reduce_cash(drink)
    @wallet -= drink.price
  end



end
