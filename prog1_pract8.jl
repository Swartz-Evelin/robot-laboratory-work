function mergesort!(a)
    if isempty(a) #length(a)==1
        return a
    end
    a1 = mergesort!(a[begin:end÷2]) 
    a2 = mergesort!(a[end÷2+1:end])
    return merge(a1, a2)
end