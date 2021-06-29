Collection=[0 4 5
   8 6 11
   2 3 7]
function reverseuser!(B::Matrix, S::Int64)
    Collection=Matrix{Int}(undef,size(B))
    for i in 1:S
        Collection[:,i]=reverseuser!(B[:,i])
        B[:,i]=reverseuser!(B[:,i])   
    end
    return Collection
end