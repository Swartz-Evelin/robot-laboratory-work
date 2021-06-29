function eval_poly(x,A)
    Q = first(A)
    for a in @view A[2:end]
        Q=Q*x+a
    end
    return Q
end
"""
"""
struct Polynom{T} 
    coeff::Vector{T}
end