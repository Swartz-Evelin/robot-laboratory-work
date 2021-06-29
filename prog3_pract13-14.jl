struct RepPlacement{K} <: AbstractCombinObject
    value::Vector{Int}
    set::Vector
end

RepPlacement{K}(n::Integer) where K = RepPlacement{K}(ones(Int, K),collect(1:n))
RepPlacement{K}(set::Set) where K = RepPlacement{K}(ones(Int, K),collect(set))

Base.get(placement::RepPlacement) = placement.set(placement.value)

function next!(placement::RepPlacement)
    c = placement.value
    n = length(placement.set)
    i = findlast(item->item < n, c)
    if isnothing(i)
        return false
    end
    c[i] += 1
    c[i+1:end] .= 1
    return true
end
