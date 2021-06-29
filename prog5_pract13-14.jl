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
