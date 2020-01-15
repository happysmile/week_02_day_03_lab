require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer.rb")

class TestCustomer < MiniTest::Test

  def setup()
    @customer = Customer.new("Andrew", 45, 21)
  end

  def test_customer_name
    assert_equal("Andrew", @customer.name)

  end

  def test_customer_cash
    assert_equal(45, @customer.wallet_cash)
  end


end
