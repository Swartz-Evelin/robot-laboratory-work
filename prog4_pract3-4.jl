function find_all_max(a)
    i_max=[firstindex(a)]
    for i in firstindex(a)+1:lastindex(a)
        if A[i]>A[i_max[end]]
            i_max=[i]
        elseif A[i]==A[i_max[end]]
            push!(i_max, i)
        end
    end
    return i_max
end
