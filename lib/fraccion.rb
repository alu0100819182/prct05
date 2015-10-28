class Fracion
	attr reader :numerador, :denominador
	
	def maycomdiv(a,b)
		b!=0? a: gcd(b, a%b)
	end
	
	def mincommult(a,b)
		z = a / maycomdiv(a,b) * b
    end
    
    def to_s
    	"#@numerador/#@denominador"
   	end
	
	def initialize(num,denom)
		raise TypeError, "Denominator may not be zero" if denom.eql? 0
		aux = maycomdiv(num,denom)
		@numerador = num/d; #obtengo el minimo
		@denominador = denom/d;
    end
   
   def + (other)
   		mcmden = mincommult(@denominador, other.denominador)
   		aux1 = (mcmden / @denominador) * @numerador
   		aux2 = (mcmden / other.denominador) * other.numerador
   		Fracion.new(aux1 + aux2,mcmden)
   end
   
   def - (other)
		mcmden = mincommult(@denominador, other.denominador)
   		aux1 = (mcmden / @denominador) * @numerador
   		aux2 = (mcmden / other.denominador) * other.numerador
   		Fracion.new(aux1 - aux2,mcmden)
   end
   
   def * (other)
   		Fracion.new(@numerador*other.numerador, @denominador*other.denominador)
   end
   
   def / (other)
   		Fracion.new(@numerador*other.denominador, @denominador*other.numerador)
   
   