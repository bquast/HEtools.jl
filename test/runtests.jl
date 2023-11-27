using Test
using HEtools  # Replace with the actual name of your package
using Polynomials

# Test cases for the coefmod function

@testset "coefmod tests" begin
    # Basic functionality tests
    @test coefmod([1, 2, 3, 4], 2) == Polynomial([1, 0, 1, 0])
    @test coefmod([5, 6, 7, 8], 3) == Polynomial([2, 0, 1, 2])

    # Test with a single-element vector
    @test coefmod([10], 5) == Polynomial([0])

    # Test with a zero modulo
    @test_throws ArgumentError coefmod([1, 2, 3], 0)

    # Test with negative numbers
    @test coefmod([-1, -2, -3, -4], 2) == Polynomial([1, 0, 1, 0])
    @test coefmod([1, 2, 3, 4], -2) == Polynomial([1, 0, 1, 0])

    # Test with an empty array
    @test coefmod([], 5) == Polynomial([])

    # Add more tests as needed
end