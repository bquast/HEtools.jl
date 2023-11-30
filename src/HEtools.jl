module HEtools

export genunif
using Random

function genunif(n, q)
    coeffs = rand(1:q, n)  # Generate n random integers from 1 to q
    Polynomials.Polynomial(coeffs)
end

end # module HEtools
