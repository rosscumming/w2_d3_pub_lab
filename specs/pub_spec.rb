require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


require_relative('../drink')
require_relative('../customer')
require_relative('../pub')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Stella", 2)
    @drink2 = Drink.new("Tennents", 3)
    @drink3 = Drink.new("Amstel", 4)
    @pub = Pub.new("The Black Bull", 100, [@drink1, @drink2, @drink3])
  end

  def test_pub_has_name
    assert_equal("The Black Bull", @pub.name)
  end

  def test_current_till_value
    assert_equal(100, @pub.total_till_cash)
  end

  def test_increase_total_till_cash
    assert_equal(103, @pub.increase_till_cash(@drink2))
  end


end
