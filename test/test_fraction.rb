require '../lib/fraction.rb'
require 'test/unit'


class Test_Fraction < Test::Unit::TestCase
    def setup
      @unidad = Fraction.new(1,1)
    end
    
    
    def test_simple
      assert_equal(@unidad.num,1)
      assert_equal(@unidad.den,1)
    end
    
    def test_zero_error
      assert_raise(RuntimeError) { Fraction.new(1,0)}
    end
end
