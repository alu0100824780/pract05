class Fraction
  attr_reader :num, :den

  def gcd(x,y)
    y == 0 ? x: gcd(y, x%y)
  end

  def lcm(x,y)
    z = x / gcd(x,y) * y
  end
  
  def initialize(num,den)
      raise RuntimeError, "El denominador no puede ser cero"  if den.eql? (0)
 	d = gcd(num, den)
	@num = num / d
	@den = den / d
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
