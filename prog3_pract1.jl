A=Vector{Int64}(undef,6)
A=[0,1,2,3,4,5]
function bubblesort!( A::Vector{Int64})
    size=sizeof(A)
    for i in 1:size
        for j in i+1:size
            if (A[i]<A[i-1])
                v=x[i]
                A[i]=A[i-1]
                A[i-1]=v
            end
        end
    end
end
bubblesort( A::Vector{Int64})=bubblesort!(copy(A::Vector{Int64}))
function sortperm!( A::Vector{Int64})
    size=sizeof(A)
    k=collect(1:size)
    for i in 1:size
        for j in i+1:size    
            if (A[i]<A[i-1])
                swap(A[i],A[i-1])
                swap(k[i], k[i-1])
            end
        end
    end
    return k
end

sortperm( A::Vector{Int64})=sortperm!(copy(A::Vector{Int64}))
