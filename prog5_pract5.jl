function f1(a,b)
    s=[]
    r=copy(a)
    while length(r)>=length(b)
        k=length(r)-length(b)

        c=vcat(b,zeros(Int64,k))
        push!(s,r[1])
        r=r-r[1]*c
        
        deleteat!(r,1)
    end
    return s,r
end