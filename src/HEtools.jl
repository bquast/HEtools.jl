module HEtools

export coefmod, genunif
import Polynomials
using Random

function coefmod(p, m)
    Polynomials.Polynomial(mod.(p[:], m))
end

function genunif(n, q)
    coeffs = rand(1:q, n)  # Generate n random integers from 1 to q
    Polynomials.Polynomial(coeffs)
end

end