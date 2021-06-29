function ford_bellman_prev(G::AbstractMatrix, s::Integer)
    n = size(G,1)
    prev = zeros(Int, n-1, n)
    C = repeat(G[s,:], n-1) 
    for k in 2:n-1, j in 2:n, i in 1:n
        if C[k,i] > C[k,i] + G[i,j]
            C[k,j] = C[k,i] + G[i,j]
            prev[k,j] = i
        end
    end
    return C, prev 
end
