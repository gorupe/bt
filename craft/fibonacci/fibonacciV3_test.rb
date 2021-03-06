require 'test/unit'
require './fibonacciV2'

class TestFibonacci < Test::Unit::TestCase
  def setup
    @fbTest = Fibonacci.new
  end
  
  # 10番目までテスト
  def testIntin
    assert_equal(0,Fibonacci.new.returnFibonacciNumber(0))
    assert_equal(1,Fibonacci.new.returnFibonacciNumber(1))
    assert_equal(1,Fibonacci.new.returnFibonacciNumber(2))
    assert_equal(2,Fibonacci.new.returnFibonacciNumber(3))
    assert_equal(3,Fibonacci.new.returnFibonacciNumber(4))
    assert_equal(5,Fibonacci.new.returnFibonacciNumber(5))
    assert_equal(8,Fibonacci.new.returnFibonacciNumber(6))
    assert_equal(13,Fibonacci.new.returnFibonacciNumber(7))
    assert_equal(21,Fibonacci.new.returnFibonacciNumber(8))
    assert_equal(34,Fibonacci.new.returnFibonacciNumber(9))
    assert_equal(55,Fibonacci.new.returnFibonacciNumber(10))
  end
  
  # ストレステスト
  def testStress
    10100.times do |count|
      Fibonacci.new.returnFibonacciNumber(count)
    end
  end
  
  # 文字列が入った場合はエラー
  def testException
    assert_raise(RuntimeError){Fibonacci.new.returnFibonacciNumber("0")}
    assert_raise(RuntimeError){Fibonacci.new.returnFibonacciNumber("b")}
  end
end
