function bubble(a::Vector{Int})
    l=2
    r=length(a)
    while (l<=r)
        j=r
        while(j>2)
            if (a[j-1]>a[j])
                a[j-1],a[j]=a[j],a[j-1]
            end
            j-=1
        end
        for i in l:r
            if (a[i-1]>a[i])
                a[i],a[i-1]=a[i-1],a[i]
            end
        end
        l+=1
        r-=1
    end
    return a
end