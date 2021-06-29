function segments_intersect(A₁::VectorXY,B₁::VectorXY{T},A₂::VectorXY{T},B₂::VectorXY{T}) where T
    A = [B₁[2]-A₁[2]  A₁[1]-B₁[1]
         B₂[2]-A₂[2]  A₂[1]-B₂[1]]

    b = [A₁[2]*(A₁[1]-B₁[1])+A₁[1]*(B₁[2]-A₁[2])
         A₂[2]*(A₂[1]-B₂[1])+A₂[1]*(B₂[2]-A₂[2])]

    x,y = A\b

    if isinner((x, y), A₁,B₁)==false || isinner((x, y), A₂,B₂)==false
        return nothing
    end

    return VectorXY{T}((x,y))
end

isinner(P,A,B) = (A.x <= P.x <= B.x || A.x >= P.x >= B.x) && 
                 (A.y <= P.y <= B.y || A.y >= P.y >= B.y)