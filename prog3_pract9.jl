function quicsort!(a)
    if isempty(a)
        return a
    end
    a, i, j = partsort!(a,a[begin]) 
    "#УТВ: all(a[begin:i] .< b) && all(a[i+1:j] .== b) && all(a[j+1:end] .>= b)"
    quicsort!(@viev a[begin:i])
    quicsort!(@viev a[j+1:end])
    return a
end
"indexes=Matrix{Int}(undef,size(A))
for j in size(A,2)
    indexes[:,j]=bubblesortperm!(@view A[:,j]) 
end
return indexes
end"

function Hoar!(a)
    n=length(a)
    distseries=(n÷2^i for i in 1:Int(floor(log2(n)))) 
    for d in distseries
        for i in firstindex(a):d-1
            insertsort!(@view a[i:d:end]) 
        end
    end
    return a
end