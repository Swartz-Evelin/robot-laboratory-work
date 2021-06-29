function maximum_(A)
    M=typemin(eltype(A))
    for a in A
        M=max(M,a)
    end
    return M
end
function find_all_max(a)
    i_max=Vector{Int}(undef,size(a))
    i_max[begin]=firstindex(a)
    n = firstindex(i_max)
    for i in firstindex(a)+1:lastindex(a)
        if A[i]>A[i_max[end]]
            i_max[begin]=i
            n = firstindex(i_max)
        elseif A[i]==A[i_max[end]]
            n+=1
            i_max[n]=i
        end
    end
    return resize!(i_max,n)
end