require 'lib/fraction.rb'
require 'test/unit'


class Test_Fraction < Test::Unit::TestCase
    def setup
      @unidad = Fraction.new(1,1)
      @irracional = Fraction.new(10,3)
    end
    
    
    def test_simple
      assert_equal(@unidad.num,1)
      assert_equal(@unidad.den,1)
    end
    
    def test_zero_error
      assert_raise(RuntimeError) { Fraction.new(1,0)}
    end
    
    def test_type_cast
      assert_equal(@irracional.to_s,"10/3")
      assert_equal(@irracional.to_f,10/3)
    end

    def test_comparational_operators
      assert(@unidad < @irracional)
      assert(@unidad <= @irracional)
      assert(@irracional > @unidad)
      assert(@irracional >= @unidad)
    end

    def test_aritmetic
      assert(@unidad * @irracional == @irracional)
      assert(@unidad + @irracional == Fraction.new(11,4) )
      assert(@irracional - @unidad == Fraction.new(9,2) )
      assert(-@unidad == Fraction.new(-1,1) )
    end
end
