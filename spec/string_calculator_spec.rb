require 'string_calculator'

describe StringCalculator do
  describe '.add' do
    context 'given an empty string' do
      it 'return zero' do
        expect(StringCalculator.add('')).to eql(0)
      end
    end

    context 'single number'
    context 'given "4"' do
      it 'return 4' do
        expect(StringCalculator.add('4')).to eql(4)
      end
    end

    context 'given "44"' do
      it 'return 44' do
        expect(StringCalculator.add('44')).to eql(44)
      end
    end
  end

  context 'two numbers' do
    context 'given 1,3' do
      it 'return 4' do
        expect(StringCalculator.add('1,3')).to eql(4)
      end
    end
    context 'given 11,33' do
      it 'return 44' do
        expect(StringCalculator.add('11,33')).to eql(44)
      end
    end
  end

  context 'unknown numbers' do
    context 'given 3,4,23' do
      it 'return 30' do
        expect(StringCalculator.add('3,4,23')).to eql(30)
      end
    end
    context 'given 23,2,111,1,2' do
      it 'return 139' do
        expect(StringCalculator.add('23,2,111,1,2')).to eql(139)
      end
    end
  end

  context 'support \n as delim' do
    context 'given 2,3\n4' do
      it 'return 9' do
        expect(StringCalculator.add('2,3\n4')).to eql(9)
      end
    end
  end
end