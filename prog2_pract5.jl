module Polynoms
    import Base: +, *
    struct Polynom{T}
        coeff::Vector{T}
    end
    function +(p::Polynom, q::Polynom)
        np,nq = length(p.coeff), length(q.coeff)
        r=Vector{promote_type(eltype(p),eltype(q))}(undef,max(np,nq))
        if np >= nq
            r .= (@view p.coeff[end-nq+1:end]) .+ q.coeff  
        else
            r .= (@view q.coeff[end-np+1:end]) .+ p.coeff
        end
        return Polynom(r)
    end
