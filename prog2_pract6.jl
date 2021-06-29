function binomial_coeffs(n::Integer)::Vector{Int}
    c=Int[]
    for _ in 1:n
        c=[1, (@view c[1:end-1] .+ @view c[2:end])..., 1] 
    return c
end
function next_rep_plasement!(c::Vector, n)
    i=findlast(item->item < n, c)
    if isnothing(i)
        return nothing
    end
    c[i] += 1
    c[i+1:end] .= 1
    return c
end
#
n = 2
c = [1,1,1]
while !isnothing(c)
    global c
    println(c)
    c = next_rep_plasement!(c,n)
    println(c)
end