function nummax(A)
    num=0
    M=typemin(eltype(A)) 
    for a in A
        if a == M
            num += 1
        elseif a>M
            num=1
            M=a
        end
    end
    return num
end
function find_all_max(a)
    i_max=[1]
    for i in 2:length(a)
        if A[i]>A[i_max[end]]
            i_max=[i]
        elseif A[i]==A[i_max[end]]
            push!(i_max, i)
        end
    end
    return i_max
end