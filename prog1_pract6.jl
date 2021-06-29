function merger(a1,b1)
    c=promote_type(eltype(a1),eltype(b1))[]
    for x in a1
        append!(c,x)
    end
    for x in b1
        append!(c,x)
    end
    return c
end
function merger!(a2,b2,c)
    for i in 1:length(a2)+length(2b)
        if i<=length(a2)
            c[i]=a2[i]
        else
            c[i]=b2[i-length(a2)]
        end
    end
    return c
end
function merger_(a,b)
    c=Vector{promote_type(eltype(a),eltype(b))}(undef,length(a)+length(b))
    for i in 1:length(a)+length(b)
        if i<=length(a)
            c[i]=a[i]
        else
            c[i]=b[i-length(a)]
        end
    end
    return c
end