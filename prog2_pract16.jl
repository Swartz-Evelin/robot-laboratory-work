function ford_bellman(G::AbstractMatrix, s::Integer)
    n = size(G,1)
    C = G[s,:]
    for k in 1:n-2, j in 2:n, i in 1:n
        if C[j] > C[i] + G[i,j]
            C[j] = C[i] + G[i,j]
        end
    end
    return C
end
