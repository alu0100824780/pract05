class Fraction
  attr_reader :num, :den
  
  def initialize(num,den)
      raise RuntimeError, "El denominador no puede ser cero"  if den.eql? (0)

	@num = num
	@den = den
  end

end
