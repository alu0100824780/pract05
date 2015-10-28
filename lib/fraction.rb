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

end
