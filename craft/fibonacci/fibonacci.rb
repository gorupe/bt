# n�Ԗڂ̃t�B�{�i�b�`����ԋp����
class Fibonacci
  # �����l��0��1
  def initialize
    @beforeTwo = 0
    @beforeOne = 1
  end

  def returnFibonacciNumber(numberInt)
    # �󂯎�����l�����l���m�F
    raise if numberInt.class != Fixnum
    
    # 0�̏ꍇ��0�A1�̏ꍇ��1��ԋp
    return numberInt if numberInt <= 1
    
    if (numberInt > 2)
      sumNum = @beforeOne + @beforeTwo
      @beforeTwo = @beforeOne
      @beforeOne = sumNum
      return returnFibonacciNumber(numberInt-1)
    else
      return @beforeOne + @beforeTwo
    end
  end

end

puts Fibonacci.new().returnFibonacciNumber(ARGV[0].to_i)
