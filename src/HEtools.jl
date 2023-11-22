module HEtools

export coefmod
import Polynomials
function coefmod(p,m)
           Polynomials.Polynomial(mod.(p[:],m))
end

end
