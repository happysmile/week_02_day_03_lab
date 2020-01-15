class Pub

  attr_reader :name, :till_cash

  #constructors

  def initialize(name, till_cash)
    @name = name
    @till_cash = till_cash
    @drinks = []
  end

  #methods

  def add_drink(drinks)
    for drink in drinks
      @drinks.push(drink)
    end
  end

  def pub_drink_count
    @drinks.count()
  end

  def add_or_remove_cash(value)
    @till_cash +=value
  end

  def remove_drink(drink)
    @drinks.delete(drink)
  end

  def is_drink_in_pub(drink_name)
    drink_is_in_pub = false
    for drink in @drinks
      if (drink.name == drink_name)
        drink_is_in_pub = true
      end
    end
    return drink_is_in_pub
  end

  def check_drinking_age_customer(customer)
    p customer.get_age()
    p customer
    if(customer.get_age >= 18)
      return true
    else
      return false
    end
  end

end
