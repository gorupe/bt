class Fibonacci
  # n�Ԗڂ̃t�B�{�i�b�`����ԋp����
  def returnFibonacciNumber(numberInt)
    # �󂯎�����l�����l���m�F
    if (numberInt.class != Fixnum)
      raise
    end
    
    beforeOne = 0
    beforeTwo = 0
    resultFibonacciNumber = 1
    
    numberInt.times do
      beforeTwo = beforeOne
      beforeOne = resultFibonacciNumber
      resultFibonacciNumber = beforeOne + beforeTwo
    end
    
    return resultFibonacciNumber
  end
end

# 1�Ԗڂ�0��2�Ԗڂ�1�Ȃ̂Ŕ����ɈႤ�B
# ���ƍċA�֐��ł��ׂ�