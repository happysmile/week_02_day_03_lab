require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub.rb")
require_relative("../drink.rb")
require_relative("../customer.rb")

class TestPub < MiniTest::Test

  def setup()
    @drink1 = Drink.new("Beers are Us", 5)
    @drink2 = Drink.new("Rainbow", 7)
    @drink3 = Drink.new("Sunshine", 4)
    drinks = [@drink1, @drink2, @drink3]
    @pub = Pub.new("Something Arms", 3400)
    @pub.add_drink(drinks)
    @customer1 = Customer.new("Andrew", 45, 21)
    @customer2 = Customer.new("Sheila", 15, 17)
  end

  def test_pub_name
    assert_equal("Something Arms", @pub.name)
  end

  def test_pub_till_cash
    assert_equal(3400, @pub.till_cash)
  end

  def test_pub_drinks
    assert_equal(3, @pub.pub_drink_count())
  end

  def test_add_or_remove_cash
    assert_equal(3405, @pub.add_or_remove_cash(5))
  end

  def test_remove_drink
    assert_equal(3,@pub.pub_drink_count())
    @pub.remove_drink(@drink1)
    assert_equal(2,@pub.pub_drink_count())
  end

  def test_is_drink_in_pub
    assert_equal(true, @pub.is_drink_in_pub("Rainbow"))
    assert_equal(false, @pub.is_drink_in_pub("Hello World"))
  end

  def test_check_drinking_age_customer
    assert_equal(true, @pub.check_drinking_age_customer(@customer1))
    assert_equal(false, @pub.check_drinking_age_customer(@customer2))
  end


end
