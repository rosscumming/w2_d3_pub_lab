require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class CustomerTest < MiniTest::Test


  def setup
    @drink1 = Drink.new("Stella", 2)
    @drink2 = Drink.new("Tennents", 3)
    @drink3 = Drink.new("Amstel", 4)
    @customer = Customer.new("Bill", 100)

  end

  def test_customer_has_name
    assert_equal("Bill", @customer.name)
  end

  def test_customer_has_cash
    assert_equal(100, @customer.customer_cash)
  end
  #
  # def test_customer_can_buy_drink
  #   @customer.drink_purchased(@drink2)
  #   assert_equal("Tennents", @drink2.drink_purchased)
  # end

  def test_reduce_customers_cash
    assert_equal(97, @customer.reduce_cash(@drink2))
  end

end
