class Pub

  attr_reader :name, :total_till_cash, :price

  def initialize(name, total_till_cash, price)
    @name = name
    @total_till_cash = total_till_cash
    @price = price
  end



  def increase_till_cash(drink)
    @total_till_cash += drink.price
  end


end
