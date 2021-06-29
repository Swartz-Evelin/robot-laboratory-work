struct RepPlacement <: AbstractCombinObject
    value::Vector{Int}
    set::Vector
    k::Int
end
RepPlacement(n::Integer, k::Integer) = RepPlacement(ones(Int, k), collect(1:n), k)
RepPlacement(set::Set, n::Integer) = RepPlacement(ones(Int, k), collect(set), k) 
function permutations(a::AbstractVector)
    n = length(a)
    p=collect(1:n)
    function next()
        perm_a = a[p]
        p = next_permute!(p)
        return perm_a
    end
    return (next() for _ in 1:factorial(n))
end
permutations(n::Integer) = permutations(collect(1:n))
