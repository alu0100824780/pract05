class Fraction
  attr_reader :num, :den
  
  def initialize(num,den)
      raise RuntimeError, "El denominador no puede ser cero"  if den.eql? (0)

	@num = num
	@den = den
  end
  
  
  def to_s
    "#@num/#@den"
  end
  
  def to_f
    @num/@den
  end
  
  def == (other)
    @num == other.num and @den == other.den
  end
  
  def -@
    Fraction.new(-@num, @den)
  end
  
  def +(other)
    Fraction.new(@num + other.num, @den + other.den)
  end
  
  def -(other)
    Fraction.new(@num - other.num, @den - other.den)
  end
  
  def *(other)
    Fraction.new(@num * other.num, @den * other.den)
  end
  
  def <(other)
    (@num * other.den) < (@den * other.num)
  end
  
  def <=(other)
    (@num * other.den) <= (@den * other.num)
  end
    
  def >(other)
    (@num * other.den) > (@den * other.num)
  end
  
  def >=(other)
    (@num * other.den) >= (@den * other.num)
  end
    

end
