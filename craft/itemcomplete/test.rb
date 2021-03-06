#!ruby
# -*- coding: utf-8 -*-
=begin
=end

require 'test/unit'
require './nameko'


class TestNameko < Test::Unit::TestCase
  def testCount
    assert_equal(0.5, List(2.0, 2.0) )
    assert_equal(0.75, List(2.0, 3.0) )
    assert_equal(0.22, List(3.0, 3.0) )
  end
  
  def testList
     assert_equal(0.5, List(2) )
  end
end

=begin
class TestRb < Test::Unit::TestCase
  def setup
    @left = Place.new(3, 3)
    @right = Place.new(1, 3)
  end

  def testCheckState
    assert_equal(true, check_state(@left))
    assert_equal(false, check_state(@right))
  end
  
  def testMove
    
  end
  
end
=end


=begin
class TestBetweenHour < Test::Unit::TestCase
  def testGetargs
    assert_not_nil(@bhTest.isBetweenHour(1,1,1))
  end
end
=end



=begin
#MF試験問題テスト
require 'test/unit'
require './tmp'

class TestBetweenHour < Test::Unit::TestCase
  def setup
    @bhTest = BetweenHour.new
  end
  # 1 ある時刻と、時間の範囲(開始時刻と終了時刻)を受け取る。
  def testGetargs
    assert_not_nil(@bhTest.isBetweenHour(1,1,1))
  end
  
  # 2 時刻は、6時であれば6のような指定でよく、分単位は問わない。
  def testSetInt
    assert_nothing_raised(){@bhTest.isBetweenHour(1,1,1)}
    assert_raise(RuntimeError){@bhTest.isBetweenHour(1,"b","c")}
    assert_raise(RuntimeError){@bhTest.isBetweenHour("a",1,"c")}
    assert_raise(RuntimeError){@bhTest.isBetweenHour("a","b",1)}
  end
  
  # 3 範囲指定は、開始時刻を含み、終了時刻は含まないと判断すること。
  def testContainsStarttimeNotIncludeEndtime
    assert_equal(false,@bhTest.isBetweenHour(1,3,0))
    assert_equal(true,@bhTest.isBetweenHour(1,3,1))
    assert_equal(true,@bhTest.isBetweenHour(1,3,2))
    assert_equal(false,@bhTest.isBetweenHour(1,3,3))
  end
  
  # 4 ただし開始時刻と終了時刻が同じ場合は含むと判断すること。
  def testSameInbludeBoth
    assert_equal(true,@bhTest.isBetweenHour(0,0,0))
    assert_equal(false,@bhTest.isBetweenHour(0,0,1))
    assert_equal(true,@bhTest.isBetweenHour(20,20,20))
    assert_equal(false,@bhTest.isBetweenHour(20,20,21))
    assert_equal(false,@bhTest.isBetweenHour(23,23,22))
    assert_equal(true,@bhTest.isBetweenHour(23,23,23))
  end
  
  # 5 開始時刻が22時で終了時刻が5時、というような指定をされても動作すること。
  def testOverDay
    assert_equal(false,@bhTest.isBetweenHour(23,1,22))
    assert_equal(true,@bhTest.isBetweenHour(23,1,23))
    assert_equal(true,@bhTest.isBetweenHour(23,1,0))
    assert_equal(false,@bhTest.isBetweenHour(23,1,1))
  end
  
  def testTriargument
    assert_equal(false,@bhTest.isBetweenHour(0,4,23))
    assert_equal(true,@bhTest.isBetweenHour(0,4,0))
    assert_equal(true,@bhTest.isBetweenHour(0,4,1))
    assert_equal(true,@bhTest.isBetweenHour(0,4,3))
    assert_equal(false,@bhTest.isBetweenHour(0,4,4))
    assert_equal(false,@bhTest.isBetweenHour(0,4,5))
    
    assert_equal(true,@bhTest.isBetweenHour(21,23,21))
    assert_equal(true,@bhTest.isBetweenHour(21,23,22))
    assert_equal(false,@bhTest.isBetweenHour(21,23,23))
    assert_equal(false,@bhTest.isBetweenHour(21,23,0))
    
    assert_equal(true,@bhTest.isBetweenHour(2,1,2))
    assert_equal(false,@bhTest.isBetweenHour(2,1,1))
    assert_equal(true,@bhTest.isBetweenHour(2,1,0))
    assert_equal(true,@bhTest.isBetweenHour(23,0,23))
    assert_equal(false,@bhTest.isBetweenHour(23,0,0))
    assert_equal(false,@bhTest.isBetweenHour(23,0,10))
  end

  def testException
    assert_raise(RuntimeError){@bhTest.isBetweenHour(21,23,24)}
    assert_raise(RuntimeError){@bhTest.isBetweenHour(30,0,0)}
    assert_raise(RuntimeError){@bhTest.isBetweenHour(1,100,1)}
    assert_raise(ArgumentError){@bhTest.isBetweenHour(22,-1,3)}
    assert_raise(ArgumentError){@bhTest.isBetweenHour(-23,1,3)}
    assert_raise(ArgumentError){@bhTest.isBetweenHour(22,1,-128)}
  end
end
=end


=begin
require 'test/unit'

#$:.unshift File.dirname(__FILE__)  # ロードパスにカレントディレクトリを追加
#require 'tmp'

require './tmp'

class Anokutara < Test::Unit::TestCase
  # 接頭辞がtestでないとうまく反応しない
  def testGetXY()
    point = Tmp.new(3, 4)
    assert_equal(3, point.getX())
    assert_equal(4, point.getY())
  end
    
  def testSannmyaku()
    point = Tmp.new(3, 4)
    point.san(3)
    assert_equal(3, point.getsan())
  end
end
=end

