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
    Sum.new(self, other)
  end

  def reduce(bank, to_currency)
    rate =bank.rate(@currency, to_currency)
    Money.new(@amount/rate, to_currency)
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
  def initialize
    @rates ={}
  end

  def reduce(sum, to_currency)
    sum.reduce(self, to_currency)
  end

  def rate(from, to)
    return 1 if from==to
    @rates[[from, to]]
  end

  def add_rate(from, to, rate)
    @rates[[from, to]]=rate
  end
end

# sum class
class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend=augend
    @addend=addend
  end

  def reduce(bank, to_currency)
    amount = @augend.reduce(bank, to_currency).amount + @addend.reduce(bank, to_currency).amount
    Money.new(amount, to_currency)
  end
end