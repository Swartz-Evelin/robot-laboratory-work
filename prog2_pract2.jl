function sortkey(x,b)
    size=length(x)
    for i in 1:size
        for j in 1:size
            if x[i]>x[j]
                x[i],x[j]=x[j],x[i]
                b[i],b[j]=b[j],b[i]
            end
        end
    end
    return b
end
function sortkey(f::Function,b) #overload
    sortkey(f.(b),b)
end