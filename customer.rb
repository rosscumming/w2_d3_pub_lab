class Customer

  attr_reader :name, :wallet, :age

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end


  def reduce_cash(drink)
    @wallet -= drink.price
  end

  def return_customer_age
    @age
  end



end
