class Customer

  attr_reader :name, :wallet_cash, :age, :drunkeness

  #constructors

  def initialize(name, wallet_cash, age)
    @name = name
    @wallet_cash = wallet_cash
    @age = age
    @drunkeness = 0
  end

  # methods

  def get_age()
    return @age
  end

end
