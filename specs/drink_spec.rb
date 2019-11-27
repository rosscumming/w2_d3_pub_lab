require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub')
require_relative('../customer')
require_relative('../drink')

class DrinkTest < MiniTest::Test


  def setup
    @drink1 = Drink.new("Stella", 2)
    @drink2 = Drink.new("Tennents", 3)
    @drink3 = Drink.new("Amstel", 4)
  end


  def test_drink_has_name
    assert_equal("Stella", @drink1.name)
  end

  def test_drink_has_price
    assert_equal(2, @drink1.price)
  end





end
