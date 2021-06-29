function sorting(a,b)
    z=0
    v=0
    u=0
    for i in 1:length(a)
        if a[i]<b
            z=z+1
            v=v+1
            u=u+1
            a[z],a[i]=a[i],a[z]
        elseif a[i]==b
            v=v+1
            u=u+1
            a[v],a[i]=a[i],a[v]
        else
            u=u+1
            a[u],a[i]=a[i],a[u]
        end
    end
end