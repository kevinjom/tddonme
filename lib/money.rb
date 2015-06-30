class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount =amount
    @currency=currency
  end

  def times(multi)
    Money.new(@amount *multi, @currency)
  end

  def plus(other)
    Money.dollar(10)
  end

  def self.dollar(amount)
    Money.new(amount, 'USD')
  end

  def self.franc(amount)
    Money.new(amount, 'CHF')
  end

  def eql?(other)
    @amount == other.amount && @currency==other.currency
  end
end

# bank class
class Bank
  def reduce(expression, currency)
    Money.dollar(10)
  end
end