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

  def of_age_to_drink?(customer)
    return true if customer.age >= 18
    return false
  end
  #
  # def serve_drink_if_18(customer)
  #   of_age_to_drink?(customer)
  #     price.delete(1)
  # end


  #
  # if customer.age >= 18
  #   @pub.pop()


end
