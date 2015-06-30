require 'money'

describe Money do
  describe '#times' do
    context '$5 times 3' do
      it 'should be $15' do
        expect(Money.dollar(5).times(3)).to eql(Money.dollar(15))
      end
    end
    context 'F6 times 4' do
      it 'should be F24' do
        expect(Money.franc(6).times(4)).to eql(Money.franc(24))
      end
    end
  end

  describe '#currency' do
    context 'currency of $1' do
      it 'should return USD' do
        expect(Money.dollar(1).currency).to eql('USD')
      end
    end
    context 'currency of F1' do
      it 'should return CHF' do
        expect(Money.franc(1).currency).to eql('CHF')
      end
    end
  end

  describe '#eql' do
    context '$10 == $10' do
      it 'should return true' do
        expect(Money.dollar(10)).to eql(Money.dollar(10))
      end
    end

    context '$10 == F10' do
      it 'should return false' do
        expect(Money.dollar(10)).not_to eql(Money.franc(10))
      end
    end
  end

  describe '#add' do
    context '$5 plus $5' do
      it 'should be $10' do
        sum = Money.dollar(5).plus(Money.dollar(5))
        bank=Bank.new
        reduced = bank.reduce(sum, "USD")
        expect(reduced).to eql(Money.dollar(10))
      end
    end
  end
end